require 'themoviedb'

class Mytmdb 
  Tmdb::Api.key("74f4cc71015648e1a1c3dea642c2d4f0")
  
  def initialize
    set_config
  end
 
  def set_config
    @configuration = Tmdb::Configuration.new
  end

  def configuration
    return @configuration
  end
end
