class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create!(params.require(:comment).permit!)
        
        redirect_to @article
    end
end