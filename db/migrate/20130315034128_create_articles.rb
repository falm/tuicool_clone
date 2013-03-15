class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.string :from
      t.string :link

      t.timestamps
    end
  end
end
