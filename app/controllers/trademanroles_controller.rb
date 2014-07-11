class TrademanrolesController < ApplicationController
  before_action :set_trademanrole, only: [:show, :edit, :update, :destroy]

  # GET /trademanroles
  # GET /trademanroles.json
  def index
    @trademanroles = Trademanrole.all
  end

  # GET /trademanroles/1
  # GET /trademanroles/1.json
  def show
  end

  # GET /trademanroles/new
  def new
    @trademanrole = Trademanrole.new
  end

  # GET /trademanroles/1/edit
  def edit
  end

  # POST /trademanroles
  # POST /trademanroles.json
  def create
    @trademanrole = Trademanrole.new(trademanrole_params)

    respond_to do |format|
      if @trademanrole.save
        format.html { redirect_to @trademanrole, notice: 'Trademanrole was successfully created.' }
        format.json { render :show, status: :created, location: @trademanrole }
      else
        format.html { render :new }
        format.json { render json: @trademanrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trademanroles/1
  # PATCH/PUT /trademanroles/1.json
  def update
     @trademanrole = Trademanrole.find(params[:id])

    respond_to do |format|
      if @trademanrole.update_attributes(params[:trademanrole])
        format.html { redirect_to @trademanrole, notice: 'Trademanrole was successfully updated.' }
        format.json { render :show, status: :ok, location: @trademanrole }
      else
        format.html { render :edit }
        format.json { render json: @trademanrole.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trademanroles/1
  # DELETE /trademanroles/1.json
  def destroy
    @trademanrole.destroy
    respond_to do |format|
      format.html { redirect_to trademanroles_url, notice: 'Trademanrole was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trademanrole
      @trademanrole = Trademanrole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trademanrole_params
      params.require(:trademanrole).permit(:name)
    end
end
