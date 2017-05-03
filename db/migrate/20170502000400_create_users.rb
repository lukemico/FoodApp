class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :surname
      t.text :email
      t.string :password_digest
      t.integer :guide_id

      t.timestamps
    end
  end
end
