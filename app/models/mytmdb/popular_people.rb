class Mytmdb::PopularPeople < Mytmdb
  @people
  
  def get
    @people ||= Tmdb::Person.popular
    return @people
  end
end
