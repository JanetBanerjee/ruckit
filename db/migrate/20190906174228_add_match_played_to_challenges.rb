class AddMatchPlayedToChallenges < ActiveRecord::Migration[5.2]
  def change
    add_column :challenges, :played, :string
  end
end
