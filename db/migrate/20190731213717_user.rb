class User < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :photo, :string, default: "avtar.jpg"
  end
end
