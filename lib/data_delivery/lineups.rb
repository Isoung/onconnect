module Lineups
  def lineup_by_postal_code(postal_code, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:postalCode] = postal_code
    JSON.parse(get('lineups', params))
  end

  def lineup_details(lineup_id)
    params = { api_key: @api_key }
    JSON.parse(get("lineups/#{lineup_id}", params))
  end

  def lineup_channel_listings(lineup_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("lineups/#{lineup_id}/channels"), params)
  end

  def lineup_airings(lineup_id, airing_start_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDateTime] = airing_start_time
    JSON.parse(get("lineups/#{lineup_id}/grid", params))
  end
end
