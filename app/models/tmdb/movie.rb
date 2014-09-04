class Movie < Tmdb
  # responds to
  # adult, backdrop_path, belongs_to_collection, budget, genres, homepage, id, imdb_id, original_title
  # overview, popularity, poster_path, production_companies, production_countries, release_date, 
  # revenue, runtime, spoken_languages, status, tagline, title, vote_average, vote_count
  @movie

  def new(:id)
    @id ||= :id
    @movie ||= Tmdb::Movie.detail(@id)
  end

  def find(:title)
    @movie = Tmdb::Movie.find(:title)
  end
  
  def images
    Tmdb::Movie.images(@id)
  end

  def casts
    Tmdb::Movie.casts(@id)
  end

  def trailers
    Tmdb::Movie.trailers(@id)
  end

  def similar_movies
    Tmdb::Movie.similar_movies
  end
end
