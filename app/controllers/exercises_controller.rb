class ExercisesController < ApplicationController
  def index
    if params[:ajax]
      exercises = Muscle.find(params[:muscleId]).exercises

      render json: {
        exercises: exercises
      }
    else
      if user_signed_in?
        @exercises = (default_user.exercises + current_user.exercises)
          .sort_by{ |ex| ex.name.downcase }
      else
        @exercises = default_user.exercises.order('lower(name)')
      end
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
    @muscles = @exercise.muscles
  end
end
