module Series
  def series_details(series_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("series/#{series_id}", params))
  end

  def series_airings(series_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDateTime] = start_date_time
    params[:lineupId] = lineup_id
    JSON.parse(get("series/#{series_id}/airings", params))
  end

  def series_episodes(series_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("series/#{series_id}/episodes", params))
  end
end
