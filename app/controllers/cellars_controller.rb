class CellarsController < ApplicationController
  before_action :authenticate_user!

  def cellar
    @new_beer_in_cellar = Cellar.new
    @cellar = Cellar.for_user(user_id: current_user.id)
    @types = Cellar.user_types(user_id: current_user.id)
  end
end