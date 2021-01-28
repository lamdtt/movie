class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :desc
      t.string :genres
      t.string :original_language

      t.timestamps
    end
  end
end
