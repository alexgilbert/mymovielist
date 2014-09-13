class Mytmdb::Person < Mytmdb

  def initialize id
    super()
    @id ||= id
  end

  # responds to
  # name, place_of_birth, also_known_as, adult, biography, birthday, deathday
  # homepage, profile_path, imdb_id, popularity
  def details
    @details ||= Tmdb::Person.detail(@id)
    return @details
  end

  def credits
    @credits ||= Tmdb::Person.credits(@id)
    return @credits
  end

  def movie_credits
    @movie_credits ||= Tmdb::Person.movie_credits(@id)
    return @movie_credits
  end

  def tv_credits
    @tv_credits ||= Tmdb::Person.tv_credits(@id)
    return @tv_credits
  end

  def external_ids
    @external_ids ||= Tmdb::Person.external_ids(@id)
    return @external_ids
  end

  def images
    @images ||= Tmdb::Person.images(@id)
    return @images
  end

  def tagged_images
    @tagged_images ||= Tmdb::Person.tagged_images(@id)
    return @tagged_images
  end

  def changes
    @changes ||= Tmdb::Person.changes(@id)
  end
end
