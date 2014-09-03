require 'themoviedb'

class Tmdb < ActiveRecord::Base
  after_initialize :readonly!, :set_config

  Tmdb::Api.key("74f4cc71015648e1a1c3dea642c2d4f0")

  def set_config
    @configurations = Tmdb::Configuration.new
  end
  
end
