class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.text :category
      t.text :location
      t.text :cuisine
      t.integer :price
      t.integer :venue_id

      t.timestamps
    end
  end
end
