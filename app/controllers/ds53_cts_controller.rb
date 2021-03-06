class Ds53CtsController < ApplicationController
  def index
    @q = Ds53Ct.ransack(params[:q])
    @ds53_cts = @q.result(:distinct => true).includes(:user, :cycle_times).page(params[:page]).per(10)

    render("ds53_cts/index.html.erb")
  end

  def show
    @cycle_time = CycleTime.new
    @ds53_ct = Ds53Ct.find(params[:id])

    render("ds53_cts/show.html.erb")
  end

  def new
    @ds53_ct = Ds53Ct.new

    render("ds53_cts/new.html.erb")
  end

  def create
    @ds53_ct = Ds53Ct.new

    @ds53_ct.jan = params[:jan]
    @ds53_ct.feb = params[:feb]
    @ds53_ct.mar = params[:mar]
    @ds53_ct.apr = params[:apr]
    @ds53_ct.may = params[:may]
    @ds53_ct.jun = params[:jun]
    @ds53_ct.jul = params[:jul]
    @ds53_ct.aug = params[:aug]
    @ds53_ct.sep = params[:sep]
    @ds53_ct.nov = params[:nov]
    @ds53_ct.dec = params[:dec]
    @ds53_ct.name = params[:name]
    @ds53_ct.user_id = params[:user_id]
    @ds53_ct.oct = params[:oct]

    save_status = @ds53_ct.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds53_cts/new", "/create_ds53_ct"
        redirect_to("/ds53_cts")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds53 ct created successfully.")
      end
    else
      render("ds53_cts/new.html.erb")
    end
  end

  def edit
    @ds53_ct = Ds53Ct.find(params[:id])

    render("ds53_cts/edit.html.erb")
  end

  def update
    @ds53_ct = Ds53Ct.find(params[:id])

    @ds53_ct.jan = params[:jan]
    @ds53_ct.feb = params[:feb]
    @ds53_ct.mar = params[:mar]
    @ds53_ct.apr = params[:apr]
    @ds53_ct.may = params[:may]
    @ds53_ct.jun = params[:jun]
    @ds53_ct.jul = params[:jul]
    @ds53_ct.aug = params[:aug]
    @ds53_ct.sep = params[:sep]
    @ds53_ct.nov = params[:nov]
    @ds53_ct.dec = params[:dec]
    @ds53_ct.name = params[:name]
    @ds53_ct.user_id = params[:user_id]
    @ds53_ct.oct = params[:oct]

    save_status = @ds53_ct.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ds53_cts/#{@ds53_ct.id}/edit", "/update_ds53_ct"
        redirect_to("/ds53_cts/#{@ds53_ct.id}", :notice => "Ds53 ct updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ds53 ct updated successfully.")
      end
    else
      render("ds53_cts/edit.html.erb")
    end
  end

  def destroy
    @ds53_ct = Ds53Ct.find(params[:id])

    @ds53_ct.destroy

    if URI(request.referer).path == "/ds53_cts/#{@ds53_ct.id}"
      redirect_to("/", :notice => "Ds53 ct deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ds53 ct deleted.")
    end
  end
end
