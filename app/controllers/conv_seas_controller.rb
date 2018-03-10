class ConvSeasController < ApplicationController
  def index
    @conv_seas = ConvSea.all

    render("conv_seas/index.html.erb")
  end

  def show
    @conv_sea = ConvSea.find(params[:id])

    render("conv_seas/show.html.erb")
  end

  def new
    @conv_sea = ConvSea.new

    render("conv_seas/new.html.erb")
  end

  def create
    @conv_sea = ConvSea.new

    @conv_sea.jan = params[:jan]
    @conv_sea.feb = params[:feb]
    @conv_sea.mar = params[:mar]
    @conv_sea.apr = params[:apr]
    @conv_sea.may = params[:may]
    @conv_sea.jun = params[:jun]
    @conv_sea.jul = params[:jul]
    @conv_sea.aug = params[:aug]
    @conv_sea.sep = params[:sep]
    @conv_sea.oct = params[:oct]
    @conv_sea.nov = params[:nov]
    @conv_sea.dec = params[:dec]
    @conv_sea.name = params[:name]
    @conv_sea.user_id = params[:user_id]

    save_status = @conv_sea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/conv_seas/new", "/create_conv_sea"
        redirect_to("/conv_seas")
      else
        redirect_back(:fallback_location => "/", :notice => "Conv sea created successfully.")
      end
    else
      render("conv_seas/new.html.erb")
    end
  end

  def edit
    @conv_sea = ConvSea.find(params[:id])

    render("conv_seas/edit.html.erb")
  end

  def update
    @conv_sea = ConvSea.find(params[:id])

    @conv_sea.jan = params[:jan]
    @conv_sea.feb = params[:feb]
    @conv_sea.mar = params[:mar]
    @conv_sea.apr = params[:apr]
    @conv_sea.may = params[:may]
    @conv_sea.jun = params[:jun]
    @conv_sea.jul = params[:jul]
    @conv_sea.aug = params[:aug]
    @conv_sea.sep = params[:sep]
    @conv_sea.oct = params[:oct]
    @conv_sea.nov = params[:nov]
    @conv_sea.dec = params[:dec]
    @conv_sea.name = params[:name]
    @conv_sea.user_id = params[:user_id]

    save_status = @conv_sea.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/conv_seas/#{@conv_sea.id}/edit", "/update_conv_sea"
        redirect_to("/conv_seas/#{@conv_sea.id}", :notice => "Conv sea updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Conv sea updated successfully.")
      end
    else
      render("conv_seas/edit.html.erb")
    end
  end

  def destroy
    @conv_sea = ConvSea.find(params[:id])

    @conv_sea.destroy

    if URI(request.referer).path == "/conv_seas/#{@conv_sea.id}"
      redirect_to("/", :notice => "Conv sea deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Conv sea deleted.")
    end
  end
end
