class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!

  # GET /applications
  # GET /applications.json
  def index
    if params[:search].present?
      @applications = Application.near(params[:search], 100, order: 'distance')
    else
      @applications = Application.all
    end

    @applications_trades = @applications.group_by { |t| t.trade_id }
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
     @application = Application.find(params[:id])
  end

  # GET /applications/new
  def new
    session[:application_params] ||= {}
    @application = Application.new(session[:application_params])
    @application.current_step = session[:application_step]
    @application.job_id = params[:application][:job_id]
  end

  # POST /applications
  # POST /applications.json
  def create
    session[:application_params].deep_merge!(params[:application]) if params[:application]
    @application = Application.new(session[:application_params]) 
    @application.current_step = session[:application_step]
    @application.job_id = params[:application][:job_id]
    if params[:previous_button]
      @application.previous_step
    elsif @application.last_step? 
      @application.save
    else
      @application.next_step
    end

    session[:application_step] = @application.current_step
    if @application.new_record?
      render :new
    else
      session[:application_step] = session[:application_params] = nil
      flash[:notice] = "Application saved"
      redirect_to @application
    end
  end


  # GET /applications/1/edit
  def edit
  end

  # PATCH/PUT /applications/1
  # PATCH/PUT /applications/1.json
  def update
    @application = Application.find(params[:id])

    respond_to do |format|
      if @application.update_attributes(params[:application])
        format.html { redirect_to @application, notice: 'Application was successfully updated.' }
        format.json { render :show, status: :ok, location: @application }
      else
        format.html { render :edit }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applications/1
  # DELETE /applications/1.json
  def destroy
    @application.destroy
    respond_to do |format|
      format.html { redirect_to applications_url, notice: 'Application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def search_result
    @applications = Application.find(params[:application_ids])
    @hash = Gmaps4rails.build_markers(@applications) do |application, marker|
      marker.lat application.latitude
      marker.lng application.longitude
      marker.infowindow application.location
    end
  end

  def business_details
    # @applications = Application.find(params[:application_ids])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
      params.require(:application).permit(:firstname, :lastname, :phone, :email)
    end
end
