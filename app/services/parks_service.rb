class ParksService
  def all_park_info(state)
    conn.get("parks") do |conn|
      conn.params['api_key'] = ENV['PARKS_KEY']
      conn.params['stateCode'] = state
    end
  end

  private

  def conn
    Faraday.new('https://developer.nps.gov/api/v1')
  end
end
