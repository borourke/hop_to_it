class Cellar < ActiveRecord::Base
  def self.for_user(user_id:)
    self.where(user_id: user_id)
  end

  def self.user_types(user_id:)
    Beer.where(id: self.for_user(user_id: user_id).pluck(:beer_id))
  end
end