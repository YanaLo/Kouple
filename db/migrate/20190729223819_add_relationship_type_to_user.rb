class AddRelationshipTypeToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :relatiobship_type, :relationship_type
  end
end
