class AddImageToFixtures < ActiveRecord::Migration[5.2]
  def change
    add_column :fixtures, :image, :string
  end
end
