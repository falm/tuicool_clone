class Admin::ArticlesController < AdminController
	
	expose(:articles){ Article.order("id desc") }
	expose(:article)
	expose(:categories)
	expose(:topics)
	
	def create
		if article.save
			redirect_to admin_articles_path, notice: 'add article successful'
		else
			redirect_to new_admin_article_path, notice: article.errors
		end
	end
	
	def update
		if article.update_attribute(params[:aritcle])
			redirect_to admin_articles_path, notice: 'update successful'
		else
			redirect_to edit_admin_article_path, notice: article.errors
		end
	end
	
	def destroy
		article.destroy
		redirect_to admin_articles_path, notice: 'delete successful'		
	end
end
