class CardsController < ApplicationController
  before_action :set_card, only: [:show, :edit, :update, :destroy]

  def index
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    
    if @card.save
      redirect_to @card
    else
      flash[:alert] = 'You need to inform Front and Back'
      render :new
    end
  end

  def edit
  end

  def update
   if @card.update(card_params)
    redirect_to @card
   end
  end

  def destroy
    @card.destroy
    redirect_to cards_url
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:front, :back)
  end

end
