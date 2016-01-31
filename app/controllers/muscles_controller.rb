class MusclesController < ApplicationController
  def show
    @muscle = Muscle.find(params[:id])
    @exercises = @muscle.exercises
  end
end
