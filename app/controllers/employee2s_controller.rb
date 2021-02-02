class Employee2sController < ApplicationController
  before_action :set_employee2, only: %i[ show edit update destroy ]

  # GET /employee2s or /employee2s.json
  def index
    @employee2s = Employee2.all
  end

  # GET /employee2s/1 or /employee2s/1.json
  def show
  end

def list
  @employee2=Employee2.all
  
end
  # GET /employee2s/new
  def new
    @employee2 = Employee2.new
  end

  # GET /employee2s/1/edit
  def edit
  end

  # POST /employee2s or /employee2s.json
  def create
    @employee2 = Employee2.new(employee2_params)

    respond_to do |format|
      if @employee2.save
        format.html { redirect_to @employee2, notice: "Employee2 was successfully created." }
        format.json { render :show, status: :created, location: @employee2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee2s/1 or /employee2s/1.json
  def update
    respond_to do |format|
      if @employee2.update(employee2_params)
        format.html { redirect_to @employee2, notice: "Employee2 was successfully updated." }
        format.json { render :show, status: :ok, location: @employee2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee2s/1 or /employee2s/1.json
  def destroy
    @employee2.destroy
    respond_to do |format|
      format.html { redirect_to employee2s_url, notice: "Employee2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end
    


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee2
      @employee2 = Employee2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee2_params
      params.require(:employee2).permit(:firstname, :lastname, :salary, :gender, :contact, :email, :country, :city, :pincode, :address)
    end
end
