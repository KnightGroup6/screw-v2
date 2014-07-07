class TrademanprofilepagesController < ApplicationController
  before_action :set_trademanprofilepage, only: [:show, :edit, :update, :destroy]

  # GET /trademanprofilepages
  # GET /trademanprofilepages.json
  def index
    @trademanprofilepages = Trademanprofilepage.all
  end

  # GET /trademanprofilepages/1
  # GET /trademanprofilepages/1.json
  def show
  end

  # GET /trademanprofilepages/new
  def new
    @trademanprofilepage = Trademanprofilepage.new
  end

  # GET /trademanprofilepages/1/edit
  def edit
  end

  # POST /trademanprofilepages
  # POST /trademanprofilepages.json
  def create
    @trademanprofilepage = Trademanprofilepage.new(trademanprofilepage_params)

    respond_to do |format|
      if @trademanprofilepage.save
        format.html { redirect_to @trademanprofilepage, notice: 'Trademanprofilepage was successfully created.' }
        format.json { render :show, status: :created, location: @trademanprofilepage }
      else
        format.html { render :new }
        format.json { render json: @trademanprofilepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trademanprofilepages/1
  # PATCH/PUT /trademanprofilepages/1.json
  def update
    @trademanprofilepage = Trademanprofilepage.find(params[:id])
    
    respond_to do |format|
      if @trademanprofilepage.update_attributes(params[:trademanprofilepage])
        format.html { redirect_to @trademanprofilepage, notice: 'Trademanprofilepage was successfully updated.' }
        format.json { render :show, status: :ok, location: @trademanprofilepage }
      else
        format.html { render :edit }
        format.json { render json: @trademanprofilepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trademanprofilepages/1
  # DELETE /trademanprofilepages/1.json
  def destroy
    @trademanprofilepage.destroy
    respond_to do |format|
      format.html { redirect_to trademanprofilepages_url, notice: 'Trademanprofilepage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trademanprofilepage
      @trademanprofilepage = Trademanprofilepage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trademanprofilepage_params
      params.require(:trademanprofilepage).permit(:parent_id, :name, :content)
    end
end
