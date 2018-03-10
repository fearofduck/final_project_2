class Ds40SeasController < ApplicationController
  def index
    @ds40_seas = Ds40Sea.all

    render("ds40_seas/index.html.erb")
  end

  def show
    @seasonality = Seasonality.new
    @ds40_sea = Ds40Sea.find(params[:id])

    render("ds40_seas/show.html.erb")
  end

  def new
    @ds40_sea = Ds40Sea.new

    render("ds40_seas/new.html.erb")
  end

  def create
    @ds40_sea = Ds40Sea.new

    @ds40_sea.jan = params[:jan]
    @ds40_sea.feb = params[:feb]
    @ds40_sea.mar = params[:mar]
    @ds40_sea.apr = params[:apr]
    @ds40_sea.may = params[:may]
    @ds40_sea.jun = params[:jun]
    @ds40_sea.jul = params[:jul]
    @ds40_sea.aug = params[:aug]
    @ds40_sea.sep = params[:sep]
    @ds40_sea.oct = params[:oct]
    @ds40_sea.nov = params[:nov]
    @ds40_sea.dec = params[:dec]
    @ds40_sea.name = params[:name]
    @ds40_sea.user_id = params[:user_id]

    save_status = @ds40_sea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds40_seas/new", "/create_ds40_sea"
        redirect_to("/ds40_seas")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds40 sea created successfully.")
      end
    else
      render("ds40_seas/new.html.erb")
    end
  end

  def edit
    @ds40_sea = Ds40Sea.find(params[:id])

    render("ds40_seas/edit.html.erb")
  end

  def update
    @ds40_sea = Ds40Sea.find(params[:id])

    @ds40_sea.jan = params[:jan]
    @ds40_sea.feb = params[:feb]
    @ds40_sea.mar = params[:mar]
    @ds40_sea.apr = params[:apr]
    @ds40_sea.may = params[:may]
    @ds40_sea.jun = params[:jun]
    @ds40_sea.jul = params[:jul]
    @ds40_sea.aug = params[:aug]
    @ds40_sea.sep = params[:sep]
    @ds40_sea.oct = params[:oct]
    @ds40_sea.nov = params[:nov]
    @ds40_sea.dec = params[:dec]
    @ds40_sea.name = params[:name]
    @ds40_sea.user_id = params[:user_id]

    save_status = @ds40_sea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds40_seas/#{@ds40_sea.id}/edit", "/update_ds40_sea"
        redirect_to("/ds40_seas/#{@ds40_sea.id}", :notice => "Ds40 sea updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds40 sea updated successfully.")
      end
    else
      render("ds40_seas/edit.html.erb")
    end
  end

  def destroy
    @ds40_sea = Ds40Sea.find(params[:id])

    @ds40_sea.destroy

    if URI(request.referer).path == "/ds40_seas/#{@ds40_sea.id}"
      redirect_to("/", :notice => "Ds40 sea deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ds40 sea deleted.")
    end
  end
end
