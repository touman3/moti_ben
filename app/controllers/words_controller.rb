class WordsController < ApplicationController
  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    @word.user_id = current_user.id
    @word.save
    redirect_to action: :index
  end

  def index
    @words = Word.all
  end
  
  def show
    @word = Word.find(params[:id])
  end

  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to action: :index
  end

  private

  def word_params
    params.require(:word).permit(:genre, :content, :name)
  end
end
