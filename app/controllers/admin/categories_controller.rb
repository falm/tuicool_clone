class Admin::CategoriesController < AdminController
	
	expose(:categories)
	expose(:category)
	
	def create
		if category.save
			redirect_to admin_categories_path, notice: 'add category successful'
		else
			redirect_to new_admin_category_path, notice: category.errors
		end
	end
	
	def update
		if category.update_attribute(params[:aritcle])
			redirect_to admin_categories_path, notice: 'update successful'
		else
			redirect_to edit_admin_category_path, notice: category.errors
		end
	end
	
	def destroy
		category.destroy
		redirect_to admin_categories_path, notice: 'delete successful'		
	end	
end
