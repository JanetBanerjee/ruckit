class CreateFixtures < ActiveRecord::Migration[5.2]
  def change
    create_table :fixtures do |t|
      t.string :club_name
      t.string :club_info
      t.string :address
      t.string :city
      t.string :providence
      t.string :country
      t.string :club_email
      t.string :club_phone
      t.string :age
      t.string :club_facebook
      t.string :club_twitter
      t.string :club_website


      t.timestamps
    end
  end
end
