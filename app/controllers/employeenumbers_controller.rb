class EmployeenumbersController < ApplicationController
  before_action :set_employeenumber, only: [:show, :edit, :update, :destroy]

  # GET /employeenumbers
  # GET /employeenumbers.json
  def index
    @employeenumbers = Employeenumber.all
  end

  # GET /employeenumbers/1
  # GET /employeenumbers/1.json
  def show
  end

  # GET /employeenumbers/new
  def new
    @employeenumber = Employeenumber.new
  end

  # GET /employeenumbers/1/edit
  def edit
  end

  # POST /employeenumbers
  # POST /employeenumbers.json
  def create
    @employeenumber = Employeenumber.new(employeenumber_params)

    respond_to do |format|
      if @employeenumber.save
        format.html { redirect_to @employeenumber, notice: 'Employeenumber was successfully created.' }
        format.json { render :show, status: :created, location: @employeenumber }
      else
        format.html { render :new }
        format.json { render json: @employeenumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employeenumbers/1
  # PATCH/PUT /employeenumbers/1.json
  def update
   @employeenumber = Employeenumber.find(params[:id])

    respond_to do |format|
      if @employeenumber.update_attributes(params[:employeenumber])
        format.html { redirect_to @employeenumber, notice: 'Employeenumber was successfully updated.' }
        format.json { render :show, status: :ok, location: @employeenumber }
      else
        format.html { render :edit }
        format.json { render json: @employeenumber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employeenumbers/1
  # DELETE /employeenumbers/1.json
  def destroy
    @employeenumber.destroy
    respond_to do |format|
      format.html { redirect_to employeenumbers_url, notice: 'Employeenumber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeenumber
      @employeenumber = Employeenumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employeenumber_params
      params.require(:employeenumber).permit(:name)
    end
end
