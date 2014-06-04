class JobstartdatesController < ApplicationController
  before_action :set_jobstartdate, only: [:show, :edit, :update, :destroy]

  # GET /jobstartdates
  # GET /jobstartdates.json
  def index
    @jobstartdates = Jobstartdate.all
  end

  # GET /jobstartdates/1
  # GET /jobstartdates/1.json
  def show
  end

  # GET /jobstartdates/new
  def new
    @jobstartdate = Jobstartdate.new
  end

  # GET /jobstartdates/1/edit
  def edit
  end

  # POST /jobstartdates
  # POST /jobstartdates.json
  def create
    @jobstartdate = Jobstartdate.new(jobstartdate_params)

    respond_to do |format|
      if @jobstartdate.save
        format.html { redirect_to @jobstartdate, notice: 'Jobstartdate was successfully created.' }
        format.json { render :show, status: :created, location: @jobstartdate }
      else
        format.html { render :new }
        format.json { render json: @jobstartdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobstartdates/1
  # PATCH/PUT /jobstartdates/1.json
  def update
    respond_to do |format|
      if @jobstartdate.update_attributes(params[:jobstartdate])
        format.html { redirect_to @jobstartdate, notice: 'Jobstartdate was successfully updated.' }
        format.json { render :show, status: :ok, location: @jobstartdate }
      else
        format.html { render :edit }
        format.json { render json: @jobstartdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobstartdates/1
  # DELETE /jobstartdates/1.json
  def destroy
    @jobstartdate.destroy
    respond_to do |format|
      format.html { redirect_to jobstartdates_url, notice: 'Jobstartdate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobstartdate
      @jobstartdate = Jobstartdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobstartdate_params
      params.require(:jobstartdate).permit(:name)
    end
end
