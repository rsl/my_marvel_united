class AddMoreFieldsToHeroes < ActiveRecord::Migration[7.0]
  def change
    add_column :heroes, :mutant, :boolean, default: false, null: false
    add_column :villains, :mutant, :boolean, default: false, null: false
  end
end
