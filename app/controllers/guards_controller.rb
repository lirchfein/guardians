class GuardsController < ApplicationController
  def index
    raise
  end

  def new
    @guard = Guard.new
  end

  def show
  end

  def create
    @guard = Guard.new(guard_params)
  end

  private

  def guard_params
    params.require(:guard).permit(:name)
  end
end
