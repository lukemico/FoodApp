class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :tagline
      t.text :copy
      t.integer :venue_id

      t.timestamps
    end
  end
end
