# Dark Sky Crystal Library

<div class="flash flash-warn">

**NOTE:**

**The api of this library is subject to change.**

**Releases will be properly tagged, so versions should be used when depending on this library.**

</div>

## Usage

Add this to your `shard.yml`:
```
dependencies:
  darksky:
    github: willamin/darksky
    version: 0.1.0
```

Install your shards:
```
$ shards install
```

Require the library from your codebase:
```
require "darksky"
```

Fetch the current conditions given a latitude and longitude:
```
api_key = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
location = "40,-74"
DarkSky::Forecast.fetch?(api_key, location)
```

## Contributing

1. Fork it ( https://github.com/willamin/darksky/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [willamin](https://github.com/willamin) Will Lewis - creator, maintainer
