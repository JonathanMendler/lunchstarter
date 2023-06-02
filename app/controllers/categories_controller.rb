class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :index
  end

  def show
    @category = Category.find_by(id: params["id"])
    render :show
  end

  def new
    @category = Category.new
    render :new
  end

  def create
    @category = Category.create(
      name: params[:category][:name],
    )
    redirect_to "/categories"
  end
end


# class CommentsController < ApplicationController
#   def create
#     @article = Article.find(params[:article_id])
#     @comment = @article.comments.create(comment_params)
#     redirect_to article_path(@article)
#   end

#   private

#   def comment_params
#     params.require(:comment).permit(:commenter, :body)
#   end
# end