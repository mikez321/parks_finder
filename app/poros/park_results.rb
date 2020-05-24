class ParkResults
  def get_parks(state)
    parks_info = ParksService.new(state).all_park_info
    parks_hashed = JSON.parse(parks_info.body, symbolize_names: true)

    parks_hashed[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end
