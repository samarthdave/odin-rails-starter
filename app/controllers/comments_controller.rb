class CommentsController < ApplicationController

  def create
    @article = Article.find(params[:article_id])

    if @article
      @comment = @article.comments.create(comment_params)
      redirect_to article_path(@article)
    else
      render file: "#{Rails.root}/public/404.html", layout: false, status: :not_found
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
