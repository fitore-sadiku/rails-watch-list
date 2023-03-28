class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.text :titleoverview
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
  end
end
