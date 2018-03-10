class Ds40CtsController < ApplicationController
  def index
    @ds40_cts = Ds40Ct.all

    render("ds40_cts/index.html.erb")
  end

  def show
    @cycle_time = CycleTime.new
    @ds40_ct = Ds40Ct.find(params[:id])

    render("ds40_cts/show.html.erb")
  end

  def new
    @ds40_ct = Ds40Ct.new

    render("ds40_cts/new.html.erb")
  end

  def create
    @ds40_ct = Ds40Ct.new

    @ds40_ct.jan = params[:jan]
    @ds40_ct.feb = params[:feb]
    @ds40_ct.mar = params[:mar]
    @ds40_ct.apr = params[:apr]
    @ds40_ct.may = params[:may]
    @ds40_ct.jun = params[:jun]
    @ds40_ct.jul = params[:jul]
    @ds40_ct.aug = params[:aug]
    @ds40_ct.sep = params[:sep]
    @ds40_ct.oct = params[:oct]
    @ds40_ct.nov = params[:nov]
    @ds40_ct.dec = params[:dec]
    @ds40_ct.name = params[:name]
    @ds40_ct.user_id = params[:user_id]

    save_status = @ds40_ct.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds40_cts/new", "/create_ds40_ct"
        redirect_to("/ds40_cts")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds40 ct created successfully.")
      end
    else
      render("ds40_cts/new.html.erb")
    end
  end

  def edit
    @ds40_ct = Ds40Ct.find(params[:id])

    render("ds40_cts/edit.html.erb")
  end

  def update
    @ds40_ct = Ds40Ct.find(params[:id])

    @ds40_ct.jan = params[:jan]
    @ds40_ct.feb = params[:feb]
    @ds40_ct.mar = params[:mar]
    @ds40_ct.apr = params[:apr]
    @ds40_ct.may = params[:may]
    @ds40_ct.jun = params[:jun]
    @ds40_ct.jul = params[:jul]
    @ds40_ct.aug = params[:aug]
    @ds40_ct.sep = params[:sep]
    @ds40_ct.oct = params[:oct]
    @ds40_ct.nov = params[:nov]
    @ds40_ct.dec = params[:dec]
    @ds40_ct.name = params[:name]
    @ds40_ct.user_id = params[:user_id]

    save_status = @ds40_ct.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds40_cts/#{@ds40_ct.id}/edit", "/update_ds40_ct"
        redirect_to("/ds40_cts/#{@ds40_ct.id}", :notice => "Ds40 ct updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds40 ct updated successfully.")
      end
    else
      render("ds40_cts/edit.html.erb")
    end
  end

  def destroy
    @ds40_ct = Ds40Ct.find(params[:id])

    @ds40_ct.destroy

    if URI(request.referer).path == "/ds40_cts/#{@ds40_ct.id}"
      redirect_to("/", :notice => "Ds40 ct deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ds40 ct deleted.")
    end
  end
end
