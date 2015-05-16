class SnackWallsController < ApplicationController
  before_action :set_snack_wall, only: [:show, :edit, :update, :destroy]

  # GET /snack_walls
  # GET /snack_walls.json
  def index
    @snack_walls = SnackWall.all
  end

  # GET /snack_walls/1
  # GET /snack_walls/1.json
  def show
  end

  # GET /snack_walls/new
  def new
    @snack_wall = SnackWall.new
  end

  # GET /snack_walls/1/edit
  def edit
  end

  # POST /snack_walls
  # POST /snack_walls.json
  def create
    @snack_wall = SnackWall.new(snack_wall_params)

    respond_to do |format|
      if @snack_wall.save
        format.html { redirect_to @snack_wall, notice: 'Snack wall was successfully created.' }
        format.json { render :show, status: :created, location: @snack_wall }
      else
        format.html { render :new }
        format.json { render json: @snack_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /snack_walls/1
  # PATCH/PUT /snack_walls/1.json
  def update
    respond_to do |format|
      if @snack_wall.update(snack_wall_params)
        format.html { redirect_to @snack_wall, notice: 'Snack wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @snack_wall }
      else
        format.html { render :edit }
        format.json { render json: @snack_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /snack_walls/1
  # DELETE /snack_walls/1.json
  def destroy
    @snack_wall.destroy
    respond_to do |format|
      format.html { redirect_to snack_walls_url, notice: 'Snack wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_snack_wall
      @snack_wall = SnackWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def snack_wall_params
      params.require(:snack_wall).permit(:title)
    end
end
