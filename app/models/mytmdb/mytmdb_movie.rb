class MytmdbMovie < Mytmdb

  def initialize id
    super()
    @id ||= id
  end

  # responds to
  # adult, backdrop_path, belongs_to_collection, budget, genres, homepage, id, imdb_id, original_title
  # overview, popularity, poster_path, production_companies, production_countries, release_date, 
  # revenue, runtime, spoken_languages, status, tagline, title, vote_average, vote_count
  def details
    @details ||= Tmdb::Movie.detail(@id)
    return @details
  end

  def images
    @images ||= Tmdb::Movie.images(@id)
    return @images
  end

  def crew
    @crew ||= Tmdb::Movie.crew(@id)
    return @crew
  end

  def cast
    @cast ||= Tmdb::Movie.casts(@id)
    return @cast
  end

  def trailers
    @trailers ||= Tmdb::Movie.trailers(@id)
    return @trailers
  end

  def similar_movies
    @similar_movies ||= Tmdb::Movie.similar_movies(@id)
    return @similar_movies
  end
end
