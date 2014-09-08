class MytmdbTv < Mytmdb

  def initialize id
    super()
    @id ||= id
  end

  # responds to
  # backdrop_path, created_by, episode_run_time, first_air_date, genres, 
  # homepage, in_production, languages, last_air_date, name, networks, 
  # number_of_episodes, number_of_seasons, original_name, origin_country, 
  # overview, popularity, poster_path, seasons, status, vote_average, vote_count
  def details
    @details ||= Tmdb::TV.detail(@id)
    return @details
  end

  def images
    @images ||= Tmdb::TV.images(@id)
    return @images
  end

  def cast
    @cast ||= Tmdb::TV.cast(@id)
    return @cast
  end

  def crew
    @crew ||= Tmdb::TV.crew(@id)
    return @crew
  end

  def external_ids
    @external_ids ||= Tmdb::TV.external_ids(@id)
    return @external_ids
  end
end
