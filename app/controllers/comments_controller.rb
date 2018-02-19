class CommentsController < ApplicationController
  def create
    @entry = Entry.find(params[:entry_id])
    @comment = @entry.comments.create(comment_params)
    
    if @comment.save
      redirect_to entry_path(@entry)
    else
      @errors = @comment.errors.full_messages
      redirect_to entry_path(@entry)
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
