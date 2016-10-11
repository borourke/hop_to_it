class BeersController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @beer = Beer.new
  end

  def add
    beer = Beer.create(beer_params)
    Rating.create(rating_params.merge({ beer_id: beer.id, user_id: current_user.id}))
    if params[:beer][:add_more]
      redirect_to root_path
    else
      redirect_to notes_path
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :brewery, :style)
  end

  def rating_params
    params.require(:beer).permit(:rating)
  end
end