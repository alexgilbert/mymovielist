class SearchController < ApplicationController
  def index
    @results = Search.new(params[:type], params[:value]).results
    if @results.any?
      @configuration = @results.first.configuration
      session[:search_type] = params[:type]
      session[:search_value] = params[:value]
    end
  end
end
