class IprangesController < ApplicationController
  before_action :set_iprange, only: [:show, :edit, :update, :destroy, :scan]
  # GET /ipranges
  # GET /ipranges.json
  def index
    #flash[:notice] = "Post successfully created"
    @ipranges = Iprange.all
  end


  #GET /scan
  def scan
    for i in 1..254
      puts "Value of local variable is #{i}"
      ipaddress="202.22.163.#{i}"
      Ipaddress.addIPandPing(ipaddress)
    end
    redirect_to :controller => 'ipranges', :action => 'index', :alert => "Pay attention to the road",  :notice => "Pay attention to the road"
  end
    

  # GET /ipranges/1
  # GET /ipranges/1.json
  def show
  end

  # GET /ipranges/new
  def new
    @iprange = Iprange.new
  end

  # GET /ipranges/1/edit
  def edit
  end

  # POST /ipranges
  # POST /ipranges.json
  def create
    @iprange = Iprange.new(iprange_params)

    respond_to do |format|
      if @iprange.save
        format.html { redirect_to @iprange, notice: 'Iprange was successfully created.' }
        format.json { render :show, status: :created, location: @iprange }
      else
        format.html { render :new }
        format.json { render json: @iprange.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipranges/1
  # PATCH/PUT /ipranges/1.json
  def update
    respond_to do |format|
      if @iprange.update(iprange_params)
        format.html { redirect_to @iprange, notice: 'Iprange was successfully updated.' }
        format.json { render :show, status: :ok, location: @iprange }
      else
        format.html { render :edit }
        format.json { render json: @iprange.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipranges/1
  # DELETE /ipranges/1.json
  def destroy
    @iprange.destroy
    respond_to do |format|
      format.html { redirect_to ipranges_url, notice: 'Iprange was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iprange
      @iprange = Iprange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iprange_params
      params.require(:iprange).permit(:crange, :start, :end, :notice, :alert)
    end
end
