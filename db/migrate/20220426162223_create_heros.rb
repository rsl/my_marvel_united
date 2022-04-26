class CreateHeros < ActiveRecord::Migration[7.0]
  def change
    # Fixed table plural here but not name of file
    create_table :heroes do |t|
      t.string :name
      t.belongs_to :box, null: false, foreign_key: true
      t.timestamps
    end
  end
end
