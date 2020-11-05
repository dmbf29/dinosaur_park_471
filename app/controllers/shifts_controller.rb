class ShiftsController < ApplicationController
  def new
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @shift = Shift.new
    @attractions = Attraction.where.not(id: @dinosaur.attractions)
  end

  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @shift = Shift.new(shift_params)
    @shift.dinosaur = @dinosaur
    if @shift.save
      redirect_to park_path(@dinosaur.park)
    else
      @attractions = Attraction.where.not(id: @dinosaur.attractions)
      render :new
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:attraction_id)
  end
end
