class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :input
      t.text :name
      t.integer :blog_id
      t.integer :user_id

      t.timestamps
    end
  end
end
