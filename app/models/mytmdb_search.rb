class MytmdbSearch < Mytmdb 
  def results_to_mytmdb type
    retval = Array.new
    @results.each do |result|
      retval << MytmdbFactory.build(type, result.id)
    end
    return retval
  end
end
