class MusclesController < ApplicationController
  def index
    if params[:ajax]
      muscles = (current_user.muscles.where(muscle_group_id: params[:groupId]) +
        default_user.muscles.where(muscle_group_id: params[:groupId]))
        .sort_by{ |mus| mus.name.downcase }
      exercises = muscles.first.exercises

      render json: {
        muscles: muscles, exercises: exercises
      }
    end
  end

  def show
    @muscle = Muscle.find(params[:id])
    @exercises = @muscle.exercises
  end
end
