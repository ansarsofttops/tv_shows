class CreateFavoriteShows < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_shows do |t|
      t.references :user
      t.references :tv_show
      t.timestamps
    end
  end
end
