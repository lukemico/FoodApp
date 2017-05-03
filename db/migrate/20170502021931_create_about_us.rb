class CreateAboutUs < ActiveRecord::Migration[5.0]
  def change
    create_table :about_us do |t|

      t.timestamps
    end
  end
end
