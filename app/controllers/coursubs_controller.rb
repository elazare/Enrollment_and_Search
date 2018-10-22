class CoursubsController < ApplicationController
  before_action :set_coursub, only: [:show, :edit, :update, :destroy]

  # GET /coursubs
  # GET /coursubs.json
  def index
    @coursubs = Coursub.all
  end

  # GET /coursubs/1
  # GET /coursubs/1.json
  def show
  end

  # GET /coursubs/new
  def new
    @coursub = Coursub.new
  end

  # GET /coursubs/1/edit
  def edit
  end

  # POST /coursubs
  # POST /coursubs.json
  def create
    @coursub = Coursub.new(coursub_params)

    respond_to do |format|
      if @coursub.save
        format.html { redirect_to @coursub, notice: 'Coursub was successfully created.' }
        format.json { render :show, status: :created, location: @coursub }
      else
        format.html { render :new }
        format.json { render json: @coursub.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coursubs/1
  # PATCH/PUT /coursubs/1.json
  def update
    respond_to do |format|
      if @coursub.update(coursub_params)
        format.html { redirect_to @coursub, notice: 'Coursub was successfully updated.' }
        format.json { render :show, status: :ok, location: @coursub }
      else
        format.html { render :edit }
        format.json { render json: @coursub.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursubs/1
  # DELETE /coursubs/1.json
  def destroy
    @coursub.destroy
    respond_to do |format|
      format.html { redirect_to coursubs_url, notice: 'Coursub was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coursub
      @coursub = Coursub.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coursub_params
      params.require(:coursub).permit(:subj_id, :cour_id)
    end
end
