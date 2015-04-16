class CardsController < ApplicationController
before action :authenticate_user!


    def new
      @subject = Subject.find(params[:subject_id])
      @card = Card.new
    end




def create
  @subject = Subject.find(params[:subject_id])
  @card = @subject.cards.new( card_params)
  if @card.save
    redirect_to @subject
  else
    render :new
  end
end

def edit
end

def update
  @subject = Subject.find(params[:subject_id])
  @card = @subject.cards.update(card_params)
    if @card.update
      redirect to @subject
    else
      render :edit
    end
  end

  def destroy
    @subject = Subject.find(params[:subject_id])
    @card = @subject.cards.destroy
    redirect_to subjects_path
  end



  private
    def card_params
      params.require(:user).permit(:question, :answer)
    end
end
