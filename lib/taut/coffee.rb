require "taut"
require "taut/coffee/version"

module Taut
  module Coffee
    class Hook < Taut::Hook
      get "/coffee" do
        cups = params[:text]

        return "How many cups did you want to make? eg: /coffee 5" if cups.nil?

        measurements = MultiJson.load(::Net::HTTP.get(URI("http://coffee-bear.herokuapp.com/api/v1/measurements/#{ cups }")))

        begin
          coffee = measurements["coffee"]["grams"]
          water = measurements["water"]["milliliters"]
          "#{ cups } cups? Okay, try #{ coffee } g of coffee and #{ water } ml of water."
        rescue NoMethodError
          "Sorry, I don't know how to make that much coffee"
        end
      end
    end
  end
end

Taut::Hook.register_hook "Taut::Coffee::Hook"

