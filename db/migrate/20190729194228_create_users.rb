class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :identity
      t.string :location
      t.date :date_of_birth
      t.string :partner
      t.string :relatiobship_type
      t.string :photo

      t.timestamps
    end
  end
end
