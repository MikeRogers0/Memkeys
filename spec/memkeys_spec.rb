require 'spec_helper'

describe Memkeys do

  let(:memkeys){ Memkeys.new }

  context "With no keys in memcache" do
    it "just returns the headings" do
      pending

      #expect(STDOUT).to receive(:puts).with("|      id |                      expires |        bytes | cache_key |")
      #memkeys.list_keys
    end
  end

  context "with keys in memcache" do
    it "just returns the headings" do
      pending

      #expect(STDOUT).to receive(:puts).with("|      id |                      expires |        bytes | cache_key                                    |")
      #expect(STDOUT).to receive(:puts).with("|      26 |    2016-02-05 04:12:26 +0000 |        24647 | views/home/index/1                           |")
      #memkeys.list_keys
    end
  end
end
