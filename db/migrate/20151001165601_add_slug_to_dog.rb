class AddSlugToDog < ActiveRecord::Migration
  def change
    add_column :dogs, :slug, :string
    add_index :dogs, :slug, unique: true
  end
end
