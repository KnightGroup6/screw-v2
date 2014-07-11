class BusinesstypesController < ApplicationController
  before_action :set_businesstype, only: [:show, :edit, :update, :destroy]

  # GET /businesstypes
  # GET /businesstypes.json
  def index
    @businesstypes = Businesstype.all
  end

  # GET /businesstypes/1
  # GET /businesstypes/1.json
  def show
  end

  # GET /businesstypes/new
  def new
    @businesstype = Businesstype.new
  end

  # GET /businesstypes/1/edit
  def edit
  end

  # POST /businesstypes
  # POST /businesstypes.json
  def create
    @businesstype = Businesstype.new(businesstype_params)

    respond_to do |format|
      if @businesstype.save
        format.html { redirect_to @businesstype, notice: 'Businesstype was successfully created.' }
        format.json { render :show, status: :created, location: @businesstype }
      else
        format.html { render :new }
        format.json { render json: @businesstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /businesstypes/1
  # PATCH/PUT /businesstypes/1.json
  def update
    respond_to do |format|
      if @businesstype.update(businesstype_params)
        format.html { redirect_to @businesstype, notice: 'Businesstype was successfully updated.' }
        format.json { render :show, status: :ok, location: @businesstype }
      else
        format.html { render :edit }
        format.json { render json: @businesstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /businesstypes/1
  # DELETE /businesstypes/1.json
  def destroy
    @businesstype.destroy
    respond_to do |format|
      format.html { redirect_to businesstypes_url, notice: 'Businesstype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_businesstype
      @businesstype = Businesstype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def businesstype_params
      params.require(:businesstype).permit(:name)
    end
end
