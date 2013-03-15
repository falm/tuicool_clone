class Article < ActiveRecord::Base
	attr_accessible :title, :content, :hits, :topic_id, :category_id, :form, :link
	belongs_to :topic
	belongs_to :category
	

	
	
	
end
