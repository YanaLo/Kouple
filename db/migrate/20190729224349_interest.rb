class Interest < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :free_time, :string
  end
end
