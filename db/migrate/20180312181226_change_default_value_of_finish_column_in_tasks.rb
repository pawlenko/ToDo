class ChangeDefaultValueOfFinishColumnInTasks < ActiveRecord::Migration[5.1]
  def change
    change_column_default :tasks, :finish, false
  end
end
