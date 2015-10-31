class IpaddressesController < ApplicationController
  before_action :set_ipaddress, only: [:show, :edit, :update, :destroy]

  # GET /ipaddresses
  # GET /ipaddresses.json
  def index
    @ipaddresses = Ipaddress.all
  end

  # GET /ipaddresses/1
  # GET /ipaddresses/1.json
  def show
  end

  # GET /ipaddresses/new
  def new
    @ipaddress = Ipaddress.new
  end

  # GET /ipaddresses/1/edit
  def edit
  end

  # POST /ipaddresses
  # POST /ipaddresses.json
  def create
    @ipaddress = Ipaddress.new(ipaddress_params)

    respond_to do |format|
      if @ipaddress.save
        format.html { redirect_to @ipaddress, notice: 'Ipaddress was successfully created.' }
        format.json { render :show, status: :created, location: @ipaddress }
      else
        format.html { render :new }
        format.json { render json: @ipaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipaddresses/1
  # PATCH/PUT /ipaddresses/1.json
  def update
    respond_to do |format|
      if @ipaddress.update(ipaddress_params)
        format.html { redirect_to @ipaddress, notice: 'Ipaddress was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipaddress }
      else
        format.html { render :edit }
        format.json { render json: @ipaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipaddresses/1
  # DELETE /ipaddresses/1.json
  def destroy
    @ipaddress.destroy
    respond_to do |format|
      format.html { redirect_to ipaddresses_url, notice: 'Ipaddress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipaddress
      @ipaddress = Ipaddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipaddress_params
      params.require(:ipaddress).permit(:ipaddress, :iprange, :pingable)
    end
end
