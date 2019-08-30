class ChangeSpellingInFixture < ActiveRecord::Migration[5.2]
  def change
    rename_column :fixtures, :country, :county
    rename_column :fixtures, :providence, :province
  end
end
