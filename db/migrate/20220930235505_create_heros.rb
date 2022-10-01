class CreateHeros < ActiveRecord::Migration[6.1]
  def change
    create_table :heroes do |t|
      t.string :name, null: false
      t.string :description
      t.integer :atack
      t.integer :defense

      t.timestamps
    end
  end
end
