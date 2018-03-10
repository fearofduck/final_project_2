class ConvCtsController < ApplicationController
  def index
    @conv_cts = ConvCt.all

    render("conv_cts/index.html.erb")
  end

  def show
    @conv_ct = ConvCt.find(params[:id])

    render("conv_cts/show.html.erb")
  end

  def new
    @conv_ct = ConvCt.new

    render("conv_cts/new.html.erb")
  end

  def create
    @conv_ct = ConvCt.new

    @conv_ct.jan = params[:jan]
    @conv_ct.feb = params[:feb]
    @conv_ct.mar = params[:mar]
    @conv_ct.apr = params[:apr]
    @conv_ct.may = params[:may]
    @conv_ct.jun = params[:jun]
    @conv_ct.jul = params[:jul]
    @conv_ct.aug = params[:aug]
    @conv_ct.sep = params[:sep]
    @conv_ct.oct = params[:oct]
    @conv_ct.nov = params[:nov]
    @conv_ct.dec = params[:dec]
    @conv_ct.name = params[:name]
    @conv_ct.user_id = params[:user_id]

    save_status = @conv_ct.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/conv_cts/new", "/create_conv_ct"
        redirect_to("/conv_cts")
      else
        redirect_back(:fallback_location => "/", :notice => "Conv ct created successfully.")
      end
    else
      render("conv_cts/new.html.erb")
    end
  end

  def edit
    @conv_ct = ConvCt.find(params[:id])

    render("conv_cts/edit.html.erb")
  end

  def update
    @conv_ct = ConvCt.find(params[:id])

    @conv_ct.jan = params[:jan]
    @conv_ct.feb = params[:feb]
    @conv_ct.mar = params[:mar]
    @conv_ct.apr = params[:apr]
    @conv_ct.may = params[:may]
    @conv_ct.jun = params[:jun]
    @conv_ct.jul = params[:jul]
    @conv_ct.aug = params[:aug]
    @conv_ct.sep = params[:sep]
    @conv_ct.oct = params[:oct]
    @conv_ct.nov = params[:nov]
    @conv_ct.dec = params[:dec]
    @conv_ct.name = params[:name]
    @conv_ct.user_id = params[:user_id]

    save_status = @conv_ct.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/conv_cts/#{@conv_ct.id}/edit", "/update_conv_ct"
        redirect_to("/conv_cts/#{@conv_ct.id}", :notice => "Conv ct updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Conv ct updated successfully.")
      end
    else
      render("conv_cts/edit.html.erb")
    end
  end

  def destroy
    @conv_ct = ConvCt.find(params[:id])

    @conv_ct.destroy

    if URI(request.referer).path == "/conv_cts/#{@conv_ct.id}"
      redirect_to("/", :notice => "Conv ct deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Conv ct deleted.")
    end
  end
end
