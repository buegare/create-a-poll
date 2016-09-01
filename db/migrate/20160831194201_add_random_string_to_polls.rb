class AddRandomStringToPolls < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :random_string, :string
  end
end
