class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.integer :user_created_id
      t.integer :user_finish_id
      t.integer :team_id
      t.boolean :finish,:default=>true
      t.timestamps
    end
  end
end
