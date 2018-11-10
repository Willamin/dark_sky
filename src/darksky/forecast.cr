require "http/client"
require "json"

class DarkSky::Currently
  JSON.mapping(
    time: Int32,
    summary: String,
    icon: String,
    nearestStormDistance: Float64?,
    precipIntensity: Float64,
    precipIntensityError: Float64?,
    precipProbability: Float64,
    precipType: String?,
    temperature: Float64,
    apparentTemperature: Float64,
    dewPoint: Float64,
    humidity: Float64,
    pressure: Float64,
    windSpeed: Float64,
    windGust: Float64,
    windBearing: Float64,
    cloudCover: Float64,
    uvIndex: Float64,
    visibility: Float64,
    ozone: Float64,
  )
end

class DarkSky::Forecast
  URI = "https://api.darksky.net/forecast/"

  def self.fetch?(key : String, latitude : Number, longitude : Number)
    self.fetch(key, latitude, longitude)
  rescue JSON::MappingError
    nil
  end

  def self.fetch(key : String, latitude : Number, longitude : Number)
    location = [latitude, longitude].join(",")
    uri = File.join(DarkSky::Forecast::URI, key, location)
    json = HTTP::Client.get(uri).body
    DarkSky::Forecast.from_json(json)
  end

  JSON.mapping(
    latitude: Float64,
    longitude: Float64,
    timezone: String,
    currently: Currently
  )
end
