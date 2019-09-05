class AddClubAndImageToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :club_name, :string
    add_column :challenges, :image, :string
  end
end
