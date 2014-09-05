require 'themoviedb'

class Tmdb 
  after_initialize :set_config
  self.abstract_class = true

  Tmdb::Api.key("74f4cc71015648e1a1c3dea642c2d4f0")
  
  def set_config
    @configuration = Tmdb::Configuration.new
  end
end
