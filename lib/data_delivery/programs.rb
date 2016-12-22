module Programs
  def program_details(tmsid, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("programs/#{tmsid}", params))
  end

  def program_airings(tmsid, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDateTime] = start_date_time
    params[:lineupId] = lineup_id
    JSON.parse(get("programs/#{tmsid}/airings", params))
  end

  def program_search(params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get('programs/search', params))
  end
end
