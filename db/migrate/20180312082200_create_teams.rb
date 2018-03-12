class CreateTeams < ActiveRecord::Migration[5.1]
  def up
    create_table :teams do |t|
      t.string "name"
      t.timestamps
    end
  end


  def down
  drop_table :teams
  end
end
