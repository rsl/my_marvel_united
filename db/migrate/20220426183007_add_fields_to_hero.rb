class AddFieldsToHero < ActiveRecord::Migration[7.0]
  def change
    add_column :heroes, :real_name, :string
    add_column :heroes, :gender_identity, :string
    add_column :heroes, :sexual_orientation, :string
  end
end
