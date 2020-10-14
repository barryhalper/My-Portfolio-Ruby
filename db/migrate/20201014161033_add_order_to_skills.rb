class AddOrderToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :order, :integer
  end
end
