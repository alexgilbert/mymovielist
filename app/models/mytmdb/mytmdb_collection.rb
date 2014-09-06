class MytmdbCollection < Mytmdb

  def initialize id
    super()
    @id ||= id
  end

  # responds to
  # backdrop_path, parts, poster_path, name
  def details
    @details ||= Tmdb::Collection.detail(@id)
    return @details
  end

  def images
    @images ||= Tmdb::Collection.images(@id)
    return @images
  end
end
