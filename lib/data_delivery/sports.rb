module Sports
  def sports_with_organization(sports_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("sports/#{sports_id}", params))
  end

  def sports_event_airings(sports_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get("sports/#{sports_id}/events/airings", params))
  end

  def sports_nonevent_airings(sports_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get("sports/#{sports_id}/non-events/airings", params))
  end

  def sports_universities(params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get('sports/universities', params))
  end

  def team_by_org(organization_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("sports/organizations/#{organization_id}", params))
  end

  def team_by_university(university_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("sports/universities/#{university_id}", params))
  end

  def team_details(team_brand_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("sports/teams/#{team_brand_id}", params))
  end

  def team_airings(team_brand_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get("sports/team/#{team_brand_id}/airings", params))
  end

  def organization_airings(organization_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get("sports/organizations/#{organization_id}/airings", params))
  end
end
