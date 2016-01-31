class WorkoutsController < ApplicationController
  def index
    if user_signed_in?
      @workouts = current_user.workouts
      @workout = Workout.new
      @groups = MuscleGroup.order('name')
      @muscles = (current_user.muscles + default_user.muscles)
        .sort_by{ |ex| ex.name.downcase }
      @exercises = Exercise.where(user: current_user) +
        Exercise.where(user: User.find_by(email: 'default_user@test.com'))
      @workout.gym_sets.build
    else
      redirect_to new_user_session_path
    end
  end

  def create
    if params[:ajax]
      workout = Workout.new
      groups = MuscleGroup.order('name')
      muscles = (current_user.muscles + default_user.muscles)
        .sort_by{ |ex| ex.name.downcase }
      exercises = Exercise.where(user: current_user) +
        Exercise.where(user: User.find_by(email: 'default_user@test.com'))
      workout.gym_sets.build

      render json: {
        workout: workout,
        groups: groups,
        muscles: muscles,
        exercises: exercises
      }
    else
      workout = create_workout
      workout_params[:gym_sets_attributes].values.each do |value|
        workout.gym_sets.create!(value)
      end
    end
  end

  private

  def create_workout
    workout = Workout.new(
      date: workout_params[:date],
      notes: workout_params[:notes]
    )
    workout.user = current_user

    if workout.save
      flash[:notice] = "Workout successfully added. May the gains be with you!"
      redirect_to workouts_path
    else
      @workouts = current_user.workouts
      @workout = Workout.new
      flash[:error] = workout.errors.full_messages.join('. ')
      render :index
    end

    workout
  end

  def workout_params
    params.require(:workout).permit(
      :notes,
      :date,
      gym_sets_attributes: [:exercise_id, :weight, :reps, :type]
    )
  end
end
