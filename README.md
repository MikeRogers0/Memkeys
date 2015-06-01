# Memkeys

Lists keys currently listed in memcache, based on [this gist](https://gist.github.com/bkimble/1365005).

## Sample usage

Open your terminal and run

    memkeys

The output should look like:

    |      id |                      expires |        bytes | cache_key                                             |
    |       6 |    2015-06-02 08:03:31 +0200 |          143 | _session_id:8b240b242330b0be921c78ffa7c4f6ff          |
    |      11 |    2015-06-02 20:03:23 +0200 |          807 | all_models_for_collection_cached                      |
    |      13 |    2015-06-02 20:03:23 +0200 |         1210 | views/popular_items/c944e22bd654851ed47b502f569f8d4d  |
    |      20 |    2015-06-02 20:03:23 +0200 |         6082 | some_other_key                                        |
    |      31 |    2015-06-02 02:03:23 +0200 |        80259 | views/home/index                                      |
    

## How to build gem

    gem build memkeys.gemspec 
    gem install memkeys-0.0.0.gem
