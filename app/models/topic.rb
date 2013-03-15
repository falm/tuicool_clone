class Topic < ActiveRecord::Base
	attr_accessible :name
	has_many :articles
	
	def self.first_topics(num)
		@article = Article.select(:topic_id).order(:hits).group(:topic_id).limit(5)
		self.find(@article.map {|a| a.topic_id})
	end
end
