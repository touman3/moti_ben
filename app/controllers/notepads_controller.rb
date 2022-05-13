class NotepadsController < ApplicationController
  def new
    @notepad = Notepad.new
  end

  def create
    @notepad = Notepad.new(notepad_params)
    if @notepad.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def index
    @notepads = Notepad.all
  end

  def show
    @notepad = Notepad.find(params[:id])
  end

  def edit
    @notepad = Notepad.find(params[:id])
  end

  def update
    notepad = Notepad.find(params[:id])
    notepad.update(notepad_params)
    redirect_to notepad_path(notepad.id)
  end

  def destroy
    notepad = Notepad.find(params[:id])
    notepad.destroy
    redirect_to action: :index
  end

  private

  def notepad_params
    params.require(:notepad).permit(:title, :content)
  end
end
