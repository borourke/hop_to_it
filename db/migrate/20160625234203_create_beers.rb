class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.text :name, require: true
      t.text :image_url
      t.text :brewery
      t.text :style
      t.integer :ibu
      t.text :alcohol_content
      t.text :description
    end
  end
end
