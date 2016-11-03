class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.integer :rating
      t.string :language
     

      t.timestamps null: false
    end
  end
end
