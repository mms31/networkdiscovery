class ScanhostsController < ApplicationController
  before_action :set_scanhost, only: [:show, :edit, :update, :destroy]

  # GET /scanhosts
  # GET /scanhosts.json
  def index
    @scanhosts = Scanhost.all
  end

  # GET /scanhosts/1
  # GET /scanhosts/1.json
  def show
    puts "hello"
   
  end

  # GET /scanhosts/new
  def new
    @scanhost = Scanhost.new
  end

  # GET /scanhosts/1/edit
  def edit
  end

  # POST /scanhosts
  # POST /scanhosts.json
  def create
    @scanhost = Scanhost.new(scanhost_params)

    respond_to do |format|
      if @scanhost.save
        format.html { redirect_to @scanhost, notice: 'Scanhost was successfully created.' }
        format.json { render :show, status: :created, location: @scanhost }
      else
        format.html { render :new }
        format.json { render json: @scanhost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scanhosts/1
  # PATCH/PUT /scanhosts/1.json
  def update
    respond_to do |format|
      if @scanhost.update(scanhost_params)
        format.html { redirect_to @scanhost, notice: 'Scanhost was successfully updated.' }
        format.json { render :show, status: :ok, location: @scanhost }
      else
        format.html { render :edit }
        format.json { render json: @scanhost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scanhosts/1
  # DELETE /scanhosts/1.json
  def destroy
    @scanhost.destroy
    respond_to do |format|
      format.html { redirect_to scanhosts_url, notice: 'Scanhost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scanhost
      @scanhost = Scanhost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scanhost_params
      params[:scanhost]
    end
end
