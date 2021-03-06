class TrademanprofilesController < ApplicationController

  def show
    @users = current_user
    @images = Image.all
  end

  def jobleads
  end

  def purchased
  end

  def memberBenifits
  end
 
  def account
  end

  def editjoblead
    @trades = Trade.order(:name)

    if params[:search].present?
      @applications = Application.near(params[:search], 100, order: 'distance')
      @hash = Gmaps4rails.build_markers(@applications) do |application, marker|
        marker.lat application.latitude
        marker.lng application.longitude
        marker.infowindow application.location
        marker.infowindow application.trade.name
      end
    else
      @applications = Application.all
    end
    @applications_trades = @applications.group_by { |t| t.trade_id }
  end

  def update_multiple
    @jobs = Job.find(params[:job_ids])
    @jobs = Job.update(params[:jobs], params[:jobs])
    # @jobs.reject! { |j| j.errors.empty? }
    # if @jobs.empty?
    #   redirect_to editjoblead_trademanprofiles_url
    # else
    #   render "edit_multiple"
    # end
  end
end
