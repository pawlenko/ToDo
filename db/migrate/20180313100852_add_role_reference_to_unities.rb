class AddRoleReferenceToUnities < ActiveRecord::Migration[5.1]
  def change
    add_column :unities,:role_id,:integer
  end
end
