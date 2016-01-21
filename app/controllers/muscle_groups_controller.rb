class MuscleGroupsController < ApplicationController
  def index
    @muscle_groups = MuscleGroup.all
  end

  def show
    @muscle_group = MuscleGroup.find(params[:id])
    @muscles = @muscle_group.muscles
  end
end
