require_dependency 'mytmdb/person'

class PersonController < ApplicationController

  def index
  end

  def show
    @mytmdb_person = Mytmdb::Person.new(params[:id])
    @configuration = @mytmdb_person.configuration
    @person = @mytmdb_person.details
    @movies = @mytmdb_person.movie_credits
    @shows = @mytmdb_person.tv_credits
  end
end
