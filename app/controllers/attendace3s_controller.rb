class Attendace3sController < ApplicationController
  before_action :set_attendace3, only: %i[ show edit update destroy ]

  # GET /attendace3s or /attendace3s.json
  def index
    @attendace3s = Attendace3.all
  end

  # GET /attendace3s/1 or /attendace3s/1.json
  def show
  end

  # GET /attendace3s/new
  def new
    @attendace3 = Attendace3.new
  end

  # GET /attendace3s/1/edit
  def edit
  end

  # POST /attendace3s or /attendace3s.json
  def create
    @attendace3 = Attendace3.new(attendace3_params)

    respond_to do |format|
      if @attendace3.save
        format.html { redirect_to @attendace3, notice: "Attendace3 was successfully created." }
        format.json { render :show, status: :created, location: @attendace3 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attendace3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendace3s/1 or /attendace3s/1.json
  def update
    respond_to do |format|
      if @attendace3.update(attendace3_params)
        format.html { redirect_to @attendace3, notice: "Attendace3 was successfully updated." }
        format.json { render :show, status: :ok, location: @attendace3 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendace3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendace3s/1 or /attendace3s/1.json
  def destroy
    @attendace3.destroy
    respond_to do |format|
      format.html { redirect_to attendace3s_url, notice: "Attendace3 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendace3
      @attendace3 = Attendace3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendace3_params
      params.require(:attendace3).permit(:employeeid, :employeename, :date, :intime, :outtime, :discription)
    end
end
