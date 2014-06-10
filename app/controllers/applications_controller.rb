class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  # GET /applications
  # GET /applications.json
  def index
    @applications = Application.all
  end

  # GET /applications/1
  # GET /applications/1.json
  def show
     @application = Application.find(params[:id])
  end

  # GET /applications/new
  def new
    #TODO need to add coding here to accept trade_id & job_id
    session[:application_params] ||= {}
    @application = Application.new(session[:application_params])
    @application.current_step = session[:application_step]
  end

  # POST /applications
  # POST /applications.json
  def create
    session[:application_params].deep_merge!(params[:application]) if params[:application]
    @application = Application.new(session[:application_params]) 
    @application.current_step = session[:application_step]
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
