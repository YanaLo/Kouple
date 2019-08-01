class CreateInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :interests do |t|
      t.string :hobbies
      t.string :type_of_person
      t.boolean :love_animals
      t.string :lifestyle
      t.string :diet
      t.boolean :rescue_animals

      t.timestamps
    end
  end
end
