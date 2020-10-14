class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :content
      t.string :image
      t.string :link
      t.string :summary
      t.datetime :published
      t.string :rssguidid
      t.string :title

      t.timestamps
    end
  end
end
