class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.string :category
      t.string :text
      t.text :venue
      t.text :address
      t.text :suburb
      t.integer :phone
      t.text :website

      t.timestamps
    end
  end
end
