class GoalsController < ApplicationController
  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to action: :index
    else
      render :new
    end
  end


  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    goal = Goal.find(params[:id])
    goal.update(goal_params)
    redirect_to goal_path(goal.id)
  end

  def destroy
    goal = Goal.find(params[:id])
    goal.destroy
    redirect_to '/goals'
  end

  private

  def goal_params
    params.require(:goal).permit(:name, :future, :now, :past, :start_date, :finish_date, :study_time)
  end
end
