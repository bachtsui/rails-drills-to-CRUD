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

	def show
		article_id = params[:id]
		@article = Article.find_by_id(article_id)
		#All of a sudden this made a lot of sense
		#You grab the id from the url
		#You take the id from the url and search through your db for the entry
		#You take the entry and render it onto the page through the view
		render :show
	end
end
