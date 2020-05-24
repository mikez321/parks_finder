class ParkResults
  def parsed_park_info(state)
    parks_info = ParksService.new.all_park_info(state)
    JSON.parse(parks_info.body, symbolize_names: true)
  end

  def create_parks(state)
    parsed_park_info(state)[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
