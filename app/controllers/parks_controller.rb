class ParksController < ApplicationController
  def index
    @parks = ParkResults.new.create_parks(params['state'])
  end
end
