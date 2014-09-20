class ListsController < ApplicationController
  before_action :signed_in_user
  before_action :correct_user,   only: [:edit, :update]

  def index
    @shares = current_user.shares.paginate(page: params[:page], per_page: 10)
  end
  
  def show
    @share = Share.find_by(list_id: params[:id], user_id: current_user.id)
    @list = @share.list
    @movies = @share.list.movies.paginate(page: params[:page], per_page: 10)
    @configuration = Mytmdb.new.configuration
  end

  def destroy
    List.find(params[:id]).destroy
    flash[:success] = "List deleted."
    redirect_to lists_url
  end

  def new
    @list = List.new
  end

  def create
    @list = list.new(list_params)
    if @list.save
      flash[:success] = "List Saved."
      redirect_to @list
    else
      render 'new'
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    @list = List.find(params[:id])
    if @list.update_attributes(list_params)
      flash[:success] = "List updated"
      redirect_to @list
    else
      render 'edit'
    end
  end

  def remove_movie
    if Item.find_by(movie_id: params[:movie_id], list_id: params[:list_id]).destroy
      flash[:success] = "Movie has been removed from this list."
    end
    redirect_to list_path(params[:list_id])
  end
  
  private
  
    def list_params
      params.require(:list).permit(:name, :user_id)
    end
end
