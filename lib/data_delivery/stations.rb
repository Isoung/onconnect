module Stations
  def stations_details(tmsid, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("stations/#{tmsid}", params))
  end

  def stations_airings(tmsid, airing_start_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDateTime] = airing_start_time
    JSON.parse(get("stations/#{tmsid}/airings", params))
  end
end
