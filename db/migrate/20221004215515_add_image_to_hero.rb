class AddImageToHero < ActiveRecord::Migration[6.1]
  def change
    add_column :heroes, :image, :string
  end
end
