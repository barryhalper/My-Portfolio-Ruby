class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :skills, :type, :skills_type
  end
end
