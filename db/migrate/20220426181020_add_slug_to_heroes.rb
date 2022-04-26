class AddSlugToHeroes < ActiveRecord::Migration[7.0]
  def change
    add_column :heroes, :slug, :string
    add_index :heroes, :slug, unique: true
  end
end
