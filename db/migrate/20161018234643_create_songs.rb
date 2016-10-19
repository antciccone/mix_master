class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.text :title
      t.integer :artist_id 

      t.timestamps
    end
  end
end
