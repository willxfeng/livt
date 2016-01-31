class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def show
    @muscle_group = MuscleGroup.find(params[:id])
    if user_signed_in?
      @muscles = current_user.muscles.where(muscle_group: @muscle_group) +
        default_user.muscles.where(muscle_group: @muscle_group)
    else
      @muscles = default_user.muscles.where(muscle_group: @muscle_group)
    end

    if params[:ajax]
      muscle_group = MuscleGroup.find(params[:id])
      muscles = muscle_group.muscles

      render json: {
        group: muscle_group,
        muscles: muscles
      }
    end
  end
end
