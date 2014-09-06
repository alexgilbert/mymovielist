require_dependency 'mytmdb/mytmdb_person'

class PersonController < ApplicationController

  def index
  end

  def show
    @tmdb = Mytmdb::MytmdbPerson.new(params[:id])
    @configuration = @tmdb.configuration
    @person = @tmdb.person
    @movies = @tmdb.credits
  end
end
