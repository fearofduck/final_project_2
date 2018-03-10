class ForecastsController < ApplicationController
  def index
    @q = Forecast.ransack(params[:q])
    @forecasts = @q.result(:distinct => true).includes(:user, :seasonality, :cycle_time, :comments).page(params[:page]).per(10)

    render("forecasts/index.html.erb")
  end

  def show
    @comment = Comment.new
    @forecast = Forecast.find(params[:id])

    render("forecasts/show.html.erb")
  end

  def new
    @forecast = Forecast.new

    render("forecasts/new.html.erb")
  end

  def create
    @forecast = Forecast.new

    @forecast.ds40_growth = params[:ds40_growth]
    @forecast.ds53_growth = params[:ds53_growth]
    @forecast.conv_growth = params[:conv_growth]
    @forecast.cycle_time_id = params[:cycle_time_id]
    @forecast.seasonality_id = params[:seasonality_id]
    @forecast.user_id = params[:user_id]
    @forecast.intl_in_53 = params[:intl_in_53]
    @forecast.dc_in_conv = params[:dc_in_conv]

    save_status = @forecast.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/forecasts/new", "/create_forecast"
        redirect_to("/forecasts")
      else
        redirect_back(:fallback_location => "/", :notice => "Forecast created successfully.")
      end
    else
      render("forecasts/new.html.erb")
    end
  end

  def edit
    @forecast = Forecast.find(params[:id])

    render("forecasts/edit.html.erb")
  end

  def update
    @forecast = Forecast.find(params[:id])

    @forecast.ds40_growth = params[:ds40_growth]
    @forecast.ds53_growth = params[:ds53_growth]
    @forecast.conv_growth = params[:conv_growth]
    @forecast.cycle_time_id = params[:cycle_time_id]
    @forecast.seasonality_id = params[:seasonality_id]
    @forecast.user_id = params[:user_id]
    @forecast.intl_in_53 = params[:intl_in_53]
    @forecast.dc_in_conv = params[:dc_in_conv]

    save_status = @forecast.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/forecasts/#{@forecast.id}/edit", "/update_forecast"
        redirect_to("/forecasts/#{@forecast.id}", :notice => "Forecast updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Forecast updated successfully.")
      end
    else
      render("forecasts/edit.html.erb")
    end
  end

  def destroy
    @forecast = Forecast.find(params[:id])

    @forecast.destroy

    if URI(request.referer).path == "/forecasts/#{@forecast.id}"
      redirect_to("/", :notice => "Forecast deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Forecast deleted.")
    end
  end
end
