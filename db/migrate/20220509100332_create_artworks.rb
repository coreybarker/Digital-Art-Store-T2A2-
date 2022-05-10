class CreateArtworks < ActiveRecord::Migration[7.0]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.integer :dimensions
      t.integer :price

      t.timestamps
    end
  end
end