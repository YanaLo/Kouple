class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.integer :seeker_id
      t.integer :matcher_id
      t.boolean :match

      t.timestamps
    end
  end
end
