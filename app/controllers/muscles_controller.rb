class MusclesController < ApplicationController
  def show
    @muscle = Muscle.find(params[:id])
  end
end
