class ChangeClubNameToClub < ActiveRecord::Migration[5.2]
  def change
    rename_column :fixtures, :club_name, :club
  end
end
