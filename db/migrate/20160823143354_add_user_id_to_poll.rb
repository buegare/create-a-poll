class AddUserIdToPoll < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :user_id, :integer
  end
end
