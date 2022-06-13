class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :picture
      t.string :string
      t.integer :songs
      t.belongs_to :billboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
