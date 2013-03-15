class AddHitsToArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :hits, :integer
  end
end
