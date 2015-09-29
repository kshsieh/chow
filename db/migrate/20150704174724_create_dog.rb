class CreateDog < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.uuid :uuid
      t.string :profile_image_url
      t.timestamps
    end

    add_index(:dogs, :name)
    add_index(:dogs, :uuid, unique: true)
  end
end
