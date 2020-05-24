class ParksController < ApplicationController
  def index
    @parks = ParkResults.new.get_parks(params['state'])
  end
end
