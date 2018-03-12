class AddDescriptionToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :description, :string
  end
  def down
  remove_column :teams, :description
  end
end
