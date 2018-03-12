class CreateUnities < ActiveRecord::Migration[5.1]
  def up
    create_table :unities do |t|
      t.integer :user_id
      t.integer :team_id
      t.timestamps
    end
  end

  def down
  drop_table :unities
  end
end
