require_dependency 'mytmdb/mytmdb_movie'

class MovieOwner
 
  def initialize user_id
    @user_id = user_id
  end

  def own imdb_id
    @imdb_id = imdb_id
    mc = MovieCreator.new(@imdb_id)
    Own.create(user_id: @user_id, movie_id: mc.create.id)
  end
end
