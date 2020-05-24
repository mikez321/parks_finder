class ParksController < ApplicationController
  def index
    parks_info = Faraday.get("https://developer.nps.gov/api/v1/parks?api_key=hFA0Pq782XEsOymsKRhgdGUjCwinyn3DQbtglfKN&stateCode=TN")
    parks_hashed = JSON.parse(parks_info.body, symbolize_names: true)
    @parks = parks_hashed[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
