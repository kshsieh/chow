class CreateDog < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.uuid :uuid
      t.string :image_url
    end
  end
end
