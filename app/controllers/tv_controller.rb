require_dependency 'mytmdb/mytmdb_tv'

class TvController < ApplicationController

  def index
  end

  def show
    @mytmdb_tv = Mytmdb::MytmdbTv.new(params[:id])
    @configuration = @mytmdb_tv.configuration
    @show = @mytmdb_tv.details    
    @images = @mytmdb_tv.images
    @cast = @mytmdb_tv.cast
  end
end
