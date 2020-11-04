class ParksController < ApplicationController
  before_action :set_park, only: [:show]

  # GET /parks/1
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_park
    @park = Park.find(params[:id])
  end
end
