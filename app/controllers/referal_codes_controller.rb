class ReferalCodesController < ApplicationController
  before_action :set_referal_code, only: [:show, :update, :destroy]

  # GET /referal_codes
  def index
    @referal_codes = ReferalCode.all

    render json: @referal_codes
  end

  # GET /referal_codes/1
  def show
    render json: @referal_code
  end

  # POST /referal_codes
  def create
    @referal_code = ReferalCode.new(referal_code_params)

    if @referal_code.save
      render json: @referal_code, status: :created, location: @referal_code
    else
      render json: @referal_code.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /referal_codes/1
  def update
    if @referal_code.update(referal_code_params)
      render json: @referal_code
    else
      render json: @referal_code.errors, status: :unprocessable_entity
    end
  end

  # DELETE /referal_codes/1
  def destroy
    @referal_code.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referal_code
      @referal_code = ReferalCode.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def referal_code_params
      params.require(:referal_code).permit(:memeber_id, :referal_code, :used, :expire_at)
    end
end
