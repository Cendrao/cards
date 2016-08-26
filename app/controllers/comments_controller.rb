class CommentsController < ApplicationController
  def create
    card = Card.find(params[:card_id])
    card.comments.create(params.require(:comment).permit(:author, :body))
    redirect_to card
  end
end
