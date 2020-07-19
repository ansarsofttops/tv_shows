class CreateTvShows < ActiveRecord::Migration[5.1]
  def change
    create_table :tv_shows do |t|
      t.string :show_name
      t.time :start_time
      t.time :end_time
      t.references :channel
      t.timestamps
    end
  end
end
