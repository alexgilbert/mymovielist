require 'themoviedb'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  Tmdb::Api.key("74f4cc71015648e1a1c3dea642c2d4f0")
end
