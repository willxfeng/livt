class WorkoutsController < ApplicationController
  def index
    if user_signed_in?
      @workouts = current_user.workouts
      @workout = Workout.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    workout = Workout.new(workout_params)
    workout.user = current_user
    if workout.save
      flash[:notice] = "Workout successfully added!"
      redirect_to workouts_path
    else
      binding.pry
      flash[:error] = workout.errors.full_messages.join('. ')
      render :index
    end
  end

  private

  def workout_params
    params.require(:workout).permit(
      :name,
      :notes
    )
  end
end
