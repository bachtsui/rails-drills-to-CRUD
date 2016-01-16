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
			redirect_to article_path(article)
			#This still seems to redirect articles path and not one article
			#Was using the wrong path earlier, now it works
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

	def edit
		article_id = params[:id]
		@article = Article.find_by_id(article_id)
		render :edit
	end

	def update
		article_id = params[:id]
		article = Article.find_by_id(article_id)
		article_params = params.require(:article).permit(:title, :content)
		article.update_attributes(article_params)
		#Remember we grab the existing article from the DB
		#Now we're inputting the new params we get from the edit view page
		redirect_to article_path(article)
	end
end
