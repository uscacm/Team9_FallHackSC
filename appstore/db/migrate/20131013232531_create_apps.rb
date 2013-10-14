class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.text :description
      t.decimal :rating
      t.integer :ratings
      t.integer :user_id

      t.timestamps
    end
  end
end
