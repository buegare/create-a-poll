class AddSlugToPolls < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :slug, :string
  end
end
