class CommentsController < ApplicationController

  def create
    #создание коментария
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  private
  def comment_params
    #strong_patams для комментариев
    params.require(:comment).permit(:commenter, :body, :status)
  end
end