class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all
		render :index
		#remember this renders the index set in views/articles/index
		#cause Rails is crazy
end
