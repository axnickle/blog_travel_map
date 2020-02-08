class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
      @article = Article.new
  end

  def create
    #render plain: params[:article].inspect
    @article = Article.new(article_params)
  if @article.save
      flash[:notice] = "Article was successfully created"
    redirect_to article_path(@article)
  else
   render 'new'
    end
  end

  def show
    @article = Article.find(params[:id])
   end

   def edit
      @article = Article.find(params[:id])
   end

   def update
     @article = Article.find(params[:id])
     if @article.update(article_params)
      flash[:notice] = "Article was updated"
      redirect_to article_path(@article)
     else
      flash[:notice] = "Article was not updated"
      render 'edit'
     end
   end

  private
    def article_params
     params.require(:article).permit(:title, :description, :image_file)
    end

end
