class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :desc
      t.string :image
      t.string :type
      t.boolean :home
      t.timestamps
    end
  end
end
