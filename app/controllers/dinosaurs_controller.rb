class DinosaursController < ApplicationController
  before_action :set_park, only: [:new, :create]

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    @dinosaur.park = @park
    if @dinosaur.save
      redirect_to park_path(@park)
    else
      render :new
    end
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to park_path(@dinosaur.park)
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :species, :image_url)
  end

  def set_park
    @park = Park.find(params[:park_id])
  end
end
