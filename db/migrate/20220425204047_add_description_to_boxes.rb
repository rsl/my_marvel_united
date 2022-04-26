class AddDescriptionToBoxes < ActiveRecord::Migration[7.0]
  def change
    add_column :boxes, :description, :text
  end
end
