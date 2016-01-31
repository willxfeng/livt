class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def show
    muscle_group = MuscleGroup.find(params[:id])
    if user_signed_in?
      muscles = (current_user.muscles.where(muscle_group: muscle_group) +
        default_user.muscles.where(muscle_group: muscle_group))
        .sort_by{ |ex| ex.name.downcase }
    else
      muscles = default_user.muscles.where(muscle_group: muscle_group)
    end

    render json: {
      group: muscle_group,
      muscles: muscles
    }
  end
end
