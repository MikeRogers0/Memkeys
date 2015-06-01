require 'net/telnet'
require 'thor'

class Memkeys < Thor

  desc "List Keys", "List Keys"
  method_option :host, :aliases => "-h", :desc => "Specify a host"
  def list_keys
    options = default_options.merge(options || {})
    puts options[:host].inspect

    headings = %w(id expires bytes cache_key)
    rows = []

    longest_key_len = 0
    slabs.each do |slab|
      localhost.cmd("String" => "stats cachedump #{slab['id']} #{slab['items']}", "Match" => /^END/) do |c|
        matches = c.scan(/^ITEM (.+?) \[(\d+) b; (\d+) s\]$/).each do |key_data|
          cache_key, bytes, expires_time = key_data
          rows << [slab['id'], Time.at(expires_time.to_i), bytes, cache_key]
          longest_key_len = [longest_key_len,cache_key.length].max
        end
      end
    end

    row_format = %Q(|%8s | %28s | %12s | %-#{longest_key_len}s |)
    puts row_format%headings
    rows.each{|row| puts row_format%row}

    localhost.close
  end
  default_task :list_keys

  private
  def default_options
    { host: "localhost" } 
  end

  def localhost
    @localhost ||= Net::Telnet::new("Host" => "localhost", "Port" => 11211, "Timeout" => 3)
  end

  def slabs
    matches.inject([]) { |items, item| items << Hash[*['id','items'].zip(item).flatten]; items }
  end

  def matches
    localhost.cmd("String" => "stats items", "Match" => /^END/).scan(/STAT items:(\d+):number (\d+)/)
  end
end
