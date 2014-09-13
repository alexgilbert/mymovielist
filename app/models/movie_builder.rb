require_dependency 'mytmdb/mytmdb_movie'

class MovieBuilder

  def initialize imdb_id
    @imdb_id = imdb_id
  end

  def create
    movie = Movie.find_by_imdb_id(@imdb_id)
    if movie.nil?
      movie = create_from_imdb_id
    end
    return movie
  end

  private
    def create_from_imdb_id
      tmdb_movie = Mytmdb::MytmdbMovie.new(@imdb_id)
      Movie.create(imdb_id: @imdb_id, title: tmdb_movie.details.title,
        release_date: tmdb_movie.details.release_date, 
        runtime: tmdb_movie.details.runtime.to_i,
        adult: tmdb_movie.details.adult,
        overview: tmdb_movie.details.overview)
    end
end
