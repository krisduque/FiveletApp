class CommentsController < ApplicationController
  def create
    @fivelet = Fivelet.find(params[:fivelet_id])

    if @fivelet.comments.create(comment_params)
      redirect_to @fivelet,
        notice:'Comment was successfully created!'
      else
        redirect_to @fivelet,
        alert: 'Error creating comment.'
      end
    end

    private

    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
