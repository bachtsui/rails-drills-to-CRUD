class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all
		render :index
		#remember this renders the index set in views/articles/index
		#cause Rails is crazy
	end

	def new
		@article = Article.new
		render :new 
	end

	def create
		#we're creating a new article in the db
		article_params = params.require(:article).permit(:title, :content)

		article = Article.new(article_params)

		if article.save
			redirect_to articles_path
		end
	end

end
