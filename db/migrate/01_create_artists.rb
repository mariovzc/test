class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :image
      t.integer :popularity
      t.string :spotify_url
      t.text :genres, default: [].to_yaml
      t.timestamps
    end
  end
end
