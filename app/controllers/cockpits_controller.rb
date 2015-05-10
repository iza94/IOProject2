class CockpitsController < ApplicationController
  before_action :set_cockpit, only: [:show, :edit, :update, :destroy]

  # GET /cockpits
  # GET /cockpits.json
  def index
    @cockpits = Cockpit.all
  end

  # GET /cockpits/1
  # GET /cockpits/1.json
  def show
  end

  # GET /cockpits/new
  def new
    @cockpit = Cockpit.new
  end

  # GET /cockpits/1/edit
  def edit
  end

  # POST /cockpits
  # POST /cockpits.json
  def create
    @cockpit = Cockpit.new(cockpit_params)

    respond_to do |format|
      if @cockpit.save
        format.html { redirect_to @cockpit, notice: 'Cockpit was successfully created.' }
        format.json { render :show, status: :created, location: @cockpit }
      else
        format.html { render :new }
        format.json { render json: @cockpit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cockpits/1
  # PATCH/PUT /cockpits/1.json
  def update
    respond_to do |format|
      if @cockpit.update(cockpit_params)
        format.html { redirect_to @cockpit, notice: 'Cockpit was successfully updated.' }
        format.json { render :show, status: :ok, location: @cockpit }
      else
        format.html { render :edit }
        format.json { render json: @cockpit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cockpits/1
  # DELETE /cockpits/1.json
  def destroy
    @cockpit.destroy
    respond_to do |format|
      format.html { redirect_to cockpits_url, notice: 'Cockpit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cockpit
      @cockpit = Cockpit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cockpit_params
      params[:cockpit]
    end
end
