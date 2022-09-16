class HatsController < ApplicationController
  before_action :set_hat, only: %i[ show update destroy ]

  # GET /hats
  def index
    @hats = Hat.all

    render json: @hats
  end

  # GET /hats/1
  def show
    render json: @hat
  end

  # POST /hats
  def create
    @hat = Hat.new(hat_params)

    if @hat.save
      render json: @hat, status: :created, location: @hat
    else
      render json: @hat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hats/1
  def update
    if @hat.update(hat_params)
      render json: @hat
    else
      render json: @hat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hats/1
  def destroy
    @hat.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hat
      @hat = Hat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hat_params
      params.fetch(:hat, {})permit(:description)
    end
end
