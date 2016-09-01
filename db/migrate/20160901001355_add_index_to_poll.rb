class AddIndexToPoll < ActiveRecord::Migration[5.0]
  def change
    add_index :polls, :random_string
  end
end
