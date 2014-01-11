class ChangeDataTypeForFieldname < ActiveRecord::Migration
def down
	remove_column :roles, :project_id, :string
    add_column :roles, :task_id, :string
  end
end
