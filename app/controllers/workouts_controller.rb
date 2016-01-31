class WorkoutsController < ApplicationController
  def index
    if user_signed_in?
      @workouts = current_user.workouts
      @workout = Workout.new
      @exercises = Exercise.where(user: current_user) +
        Exercise.where(user: User.find_by(email: 'default_user@test.com'))
      @workout.gym_sets.build
    else
      redirect_to new_user_session_path
    end
  end

  def create
    workout = Workout.new(
      date: workout_params[:date],
      notes: workout_params[:notes]
    )
    workout.user = current_user
    if workout.save
      flash[:notice] = "Workout successfully added!"
      redirect_to workouts_path
    else
      @workouts = current_user.workouts
      @workout = Workout.new
      flash[:error] = workout.errors.full_messages.join('. ')
      render :index
    end
  end

  private

  def workout_params
    params.require(:workout).permit(
      :notes,
      :date,
      gym_sets_attributes: [:exercise_id, :weight, :reps, :type]
    )
  end
end
