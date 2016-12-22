module Movies
  def movie_versions(root_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get("movies/#{root_id}/versions", params))
  end

  def movie_airings(root_id, lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get("movies/#{root_id}/airings", params))
  end

  def movie_airings_by_lineup(lineup_id, start_date_time, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:lineupId] = lineup_id
    params[:startDateTime] = start_date_time
    JSON.parse(get('movies/airings', params))
  end

  def movie_showtimes(movie_id, start_date, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDate] = start_date
    JSON.parse(get("movies/#{movie_id}/showings", params))
  end

  def movie_showtimes_local(start_date, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDate] = start_date
    JSON.parse(get('movies/showings', params))
  end

  def movie_future_releases(release_date, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:releaseDate] = release_date
    JSON.parse(get('movies/futureReleases', params))
  end

  def screenplay_trailers(root_id, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:rootids] = root_id
    JSON.parse(get('screenplayTrailers', params))
  end

  def theaters_by_postal_code(params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    JSON.parse(get('theaters', params))
  end

  def theaters_details(theater_id)
    params = { api_key: @api_key}
    JSON.parse(get("movies/#{theater_id}", params))
  end

  def theaters_showtimes(theater_id, start_date, params)
    params = {} unless params.is_a? Hash
    params[:api_key] = @api_key
    params[:startDate] = start_date
    JSON.parse(get("theaters/#{theater_id}/showings", params))
  end
end
