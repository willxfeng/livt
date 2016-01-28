class MusclesController < ApplicationController
  def index
    render json: {
      key: params[:title]
    }
  end

  def show
    @muscle = Muscle.find(params[:id])
  end
end
