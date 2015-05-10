class ChunkWallsController < ApplicationController
  before_action :set_chunk_wall, only: [:show, :edit, :update, :destroy]

  # GET /chunk_walls
  # GET /chunk_walls.json
  def index
    @chunk_walls = ChunkWall.all
  end

  # GET /chunk_walls/1
  # GET /chunk_walls/1.json
  def show
  end

  # GET /chunk_walls/new
  def new
    @chunk_wall = ChunkWall.new
  end

  # GET /chunk_walls/1/edit
  def edit
  end

  # POST /chunk_walls
  # POST /chunk_walls.json
  def create
    @chunk_wall = ChunkWall.new(chunk_wall_params)

    respond_to do |format|
      if @chunk_wall.save
        format.html { redirect_to @chunk_wall, notice: 'Chunk wall was successfully created.' }
        format.json { render :show, status: :created, location: @chunk_wall }
      else
        format.html { render :new }
        format.json { render json: @chunk_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chunk_walls/1
  # PATCH/PUT /chunk_walls/1.json
  def update
    respond_to do |format|
      if @chunk_wall.update(chunk_wall_params)
        format.html { redirect_to @chunk_wall, notice: 'Chunk wall was successfully updated.' }
        format.json { render :show, status: :ok, location: @chunk_wall }
      else
        format.html { render :edit }
        format.json { render json: @chunk_wall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chunk_walls/1
  # DELETE /chunk_walls/1.json
  def destroy
    @chunk_wall.destroy
    respond_to do |format|
      format.html { redirect_to chunk_walls_url, notice: 'Chunk wall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chunk_wall
      @chunk_wall = ChunkWall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chunk_wall_params
      params.require(:chunk_wall).permit(:title)
    end
end
