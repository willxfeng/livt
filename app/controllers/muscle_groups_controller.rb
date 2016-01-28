class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def show
    @muscle_group = MuscleGroup.find(params[:id])
    @muscles = @muscle_group.muscles

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
