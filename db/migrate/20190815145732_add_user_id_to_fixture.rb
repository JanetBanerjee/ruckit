class AddUserIdToFixture < ActiveRecord::Migration[5.2]
  def change
    add_column :fixtures, :user_id, :integer
  end
end
