class ParksController < ApplicationController
  def index
    parks_info = ParksService.new(params['state']).all_park_info
    parks_hashed = JSON.parse(parks_info.body, symbolize_names: true)
    @parks = parks_hashed[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
