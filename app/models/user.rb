class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :trackable, :validatable

  def first_name
    name.split(" ").first
  end

  def gather_notes
    Rating.where(user_id: self.id).order(:created_at).each_with_object([]) do |rating, results|
      beer = rating.beer
      results << {
        name: beer.name,
        brewery: beer.brewery,
        style: beer.style,
        rating: rating.rating,
        notes: "rating.notes"
      }
    end
  end
end
