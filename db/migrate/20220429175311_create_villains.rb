class CreateVillains < ActiveRecord::Migration[7.0]
  def change
    create_table :villains do |t|
      t.string :name
      t.belongs_to :box, null: false, foreign_key: true
      t.string :slug
      t.string :real_name
      t.string :gender_identity
      t.string :sexual_orientation

      t.timestamps
    end
  end
end
