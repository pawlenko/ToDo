class AllowNullOnUserFinishedTaks < ActiveRecord::Migration[5.1]
  def change
    change_column_null :tasks, :user_finish_id, true
  end
end
