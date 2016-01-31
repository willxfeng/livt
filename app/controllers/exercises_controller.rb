class ExercisesController < ApplicationController
  def index
    if user_signed_in?
      @exercises = (default_user.exercises + current_user.exercises)
        .sort_by{ |ex| ex.name.downcase }
    else
      @exercises = default_user.exercises.order('lower(name)')
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
    @muscles = @exercise.muscles
  end
end
