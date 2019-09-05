class AddEmailToChallenge < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :email, :string
  end
end
