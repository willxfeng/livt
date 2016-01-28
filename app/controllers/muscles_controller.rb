class MusclesController < ApplicationController
  def index
    render json: {
      key: 'value'
    }
  end

  def show
    @muscle = Muscle.find(params[:id])
  end
end
