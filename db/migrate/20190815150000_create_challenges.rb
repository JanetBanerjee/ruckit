class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.date :match_date
      t.string :challenger_id
      t.string :receiver_id
      t.string :full_name
      t.string :message
      t.string :phone_number
      t.string :response
      t.string :response_message

      t.integer :user_id

      t.timestamps
    end
  end
end
