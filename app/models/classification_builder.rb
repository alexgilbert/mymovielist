class ClassificationBuilder

  def set_movie_id movie_id
    @movie_id = movie_id
    return self
  end

  def create
    classifications = Classification.where(movie_id: @movie_id).all
    if classifications.empty?
      create_from_movie_id
    end
  end

  private
    def create_from_movie_id
      genres = Movie.find(@movie_id).mytmdb_movie.details.genres 

      genres.each do |g|
        genre = create_genre(g.name)
        Classification.create(movie_id: @movie_id, genre_id: genre.id)
      end
    end

    def create_genre(name)
      genre = Genre.find_by_name(name)
      if genre.nil?
        genre = Genre.create!(name: name)
      end
      return genre
    end
end
