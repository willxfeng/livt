class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.order('name')
  end

  def show
    @exercise = Exercise.find(params[:id])
  end
end
