class Ds53SeasController < ApplicationController
  def index
    @ds53_seas = Ds53Sea.all

    render("ds53_seas/index.html.erb")
  end

  def show
    @seasonality = Seasonality.new
    @ds53_sea = Ds53Sea.find(params[:id])

    render("ds53_seas/show.html.erb")
  end

  def new
    @ds53_sea = Ds53Sea.new

    render("ds53_seas/new.html.erb")
  end

  def create
    @ds53_sea = Ds53Sea.new

    @ds53_sea.jan = params[:jan]
    @ds53_sea.feb = params[:feb]
    @ds53_sea.mar = params[:mar]
    @ds53_sea.apr = params[:apr]
    @ds53_sea.may = params[:may]
    @ds53_sea.jun = params[:jun]
    @ds53_sea.jul = params[:jul]
    @ds53_sea.aug = params[:aug]
    @ds53_sea.sep = params[:sep]
    @ds53_sea.oct = params[:oct]
    @ds53_sea.nov = params[:nov]
    @ds53_sea.dec = params[:dec]
    @ds53_sea.name = params[:name]
    @ds53_sea.user_id = params[:user_id]

    save_status = @ds53_sea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds53_seas/new", "/create_ds53_sea"
        redirect_to("/ds53_seas")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds53 sea created successfully.")
      end
    else
      render("ds53_seas/new.html.erb")
    end
  end

  def edit
    @ds53_sea = Ds53Sea.find(params[:id])

    render("ds53_seas/edit.html.erb")
  end

  def update
    @ds53_sea = Ds53Sea.find(params[:id])

    @ds53_sea.jan = params[:jan]
    @ds53_sea.feb = params[:feb]
    @ds53_sea.mar = params[:mar]
    @ds53_sea.apr = params[:apr]
    @ds53_sea.may = params[:may]
    @ds53_sea.jun = params[:jun]
    @ds53_sea.jul = params[:jul]
    @ds53_sea.aug = params[:aug]
    @ds53_sea.sep = params[:sep]
    @ds53_sea.oct = params[:oct]
    @ds53_sea.nov = params[:nov]
    @ds53_sea.dec = params[:dec]
    @ds53_sea.name = params[:name]
    @ds53_sea.user_id = params[:user_id]

    save_status = @ds53_sea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds53_seas/#{@ds53_sea.id}/edit", "/update_ds53_sea"
        redirect_to("/ds53_seas/#{@ds53_sea.id}", :notice => "Ds53 sea updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds53 sea updated successfully.")
      end
    else
      render("ds53_seas/edit.html.erb")
    end
  end

  def destroy
    @ds53_sea = Ds53Sea.find(params[:id])

    @ds53_sea.destroy

    if URI(request.referer).path == "/ds53_seas/#{@ds53_sea.id}"
      redirect_to("/", :notice => "Ds53 sea deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ds53 sea deleted.")
    end
  end
end
