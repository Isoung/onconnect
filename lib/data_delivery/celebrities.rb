module Celebrities
  def celebrity_details(person_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("celebs/#{person_id}", params))
  end

  def celebrity_airings(person_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get("celebs/#{person_id}/airings", params))
  end

  def celebrity_on_talk_shows(lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get('celebs/talkShowAirings', params))
  end

  def celebrity_images(person_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("celebs/#{person_id}/images", params))
  end
end
