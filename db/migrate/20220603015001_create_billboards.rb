class CreateBillboards < ActiveRecord::Migration[7.0]
  def change
    create_table :billboards do |t|
      t.string :genre
      t.integer :artists

      t.timestamps
    end
  end
end
