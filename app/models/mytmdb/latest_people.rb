class Mytmdb::LatestPeople < Mytmdb
  @people
  
  def get
    @people ||= Tmdb::Person.latest
    return @people
  end
end
