class MytmdbCompany < Mytmdb

  def initialize id
    super()
    @id ||= id
  end

  # responds to
  # description, homepage, logo_path, name, parent_company
  def company
    @company ||= Tmdb::Company.detail(@id)
    return @company
  end

  def movies
    @movies ||= Tmdb::Company.movies(@id)
    return @movies
  end
end
