class SearchController < ApplicationController
  def index
    @results = Search.new(params[:type], params[:value]).results
    @configuration = @results.first.configuration
    @type = params[:type]
  end
end
