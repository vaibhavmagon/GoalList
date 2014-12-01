class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :message
      t.text :story
      t.text :moral
      t.date :created_at
      t.date :completed_at

      t.timestamps
    end
  end
end
