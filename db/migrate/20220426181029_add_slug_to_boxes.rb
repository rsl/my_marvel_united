class AddSlugToBoxes < ActiveRecord::Migration[7.0]
  def change
    add_column :boxes, :slug, :string
    add_index :boxes, :slug, unique: true
  end
end
