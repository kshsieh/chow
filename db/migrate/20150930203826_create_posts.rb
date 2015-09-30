class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :dog_id
      t.text :text
      t.timestamps
    end

    add_index :posts, :dog_id
  end
end
