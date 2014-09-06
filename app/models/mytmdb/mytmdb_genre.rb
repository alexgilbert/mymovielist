class MytmdbGenre < Mytmdb

  def initialize id
    super()
    @id ||= id
  end

  # responds to
  # name, page, total_pages, total_results, results, page_page(page_number)
  def genre
    @genre ||= Tmdb::Genre.detail(@id)
    return @genre
  end
end
