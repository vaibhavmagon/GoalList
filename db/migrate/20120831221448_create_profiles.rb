class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.date :Born_on
      t.string :Gender
      t.string :Location
      t.text :About
      t.integer :user_id

      t.timestamps
    end
    add_index :profiles, [:user_id, :created_at]
  end
end
