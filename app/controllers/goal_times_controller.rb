class GoalTimesController < ApplicationController
  def new
    @goals = Goal.all
  end

  def create
    goaltime = GoalTime.new(goaltime_params)
    goaltime.save
    redirect_to action: :index
  end

  def index
  end

  def edit
  end

  private

  def goaltime_params
    params.require(:goaltime).permit(:goal_id, :member,:start_time, :finish_time, :total, :day)
  end

end
