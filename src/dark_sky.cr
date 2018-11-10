require "./dark_sky/*"

module DarkSky
  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}
end
