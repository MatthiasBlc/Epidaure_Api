class PracticesController < ApplicationController
  
  before_action :authenticate_user!
  before_action :check_if_holder?, only: %i[update]
  before_action :set_practice, only: %i[ show update destroy ]

  # GET /practices
  def index
    @practices = Practice.all

    render json: @practices
  end

  # GET /practices/1
  def show
    render json: @practice.as_json(include: [:users, :rooms])
  end

  # POST /practices
  def create
    @practice = Practice.new(practice_params)

    if @practice.save
      render json: @practice, status: :created, location: @practice
    else
      render json: @practice.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /practices/1
  def update
    
    if @practice.update(practice_params)
      render json: @practice
    else
      render json: @practice.errors, status: :unprocessable_entity
    end
  end

  # DELETE /practices/1
  def destroy
    @practice.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_practice
      @practice = Practice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def practice_params
      params.require(:practice).permit(:name, :adress, :email)
    end
end
