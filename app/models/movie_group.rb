class MovieGroup < Mytmdb
  def results_to_movie
    retval = Array.new
    @mb = MovieBuilder.new
    @results.each do |movie|
      retval << @mb.set_imdb_id(movie.id.to_s).create
    end
    return retval
  end
end
