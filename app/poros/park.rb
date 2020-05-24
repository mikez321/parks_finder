class Park
  attr_reader :name, :full_name, :description, :direction_info, :hours
  def initialize(park_info)
    @name = park_info[:name]
    @full_name = park_info[:operatingHours].first[:name]
    @description = park_info[:description]
    @direction_info = park_info[:directionsUrl]
    @hours = park_info[:operatingHours]
  end
end
