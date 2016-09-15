class FiveletsController < ApplicationController
  before_action :set_fivelet, only: [:show, :edit, :update, :destroy]

  # GET /fivelets
  # GET /fivelets.json
  def index
    @fivelets = Fivelet.all
  end

  # GET /fivelets/1
  # GET /fivelets/1.json
  def show
  end

  # GET /fivelets/new
  def new
    @fivelet = Fivelet.new
  end

  # GET /fivelets/1/edit
  def edit
  end

  # POST /fivelets
  # POST /fivelets.json
  def create
    @fivelet = Fivelet.new(fivelet_params)

    respond_to do |format|
      if @fivelet.save
        format.html { redirect_to @fivelet, notice: 'Fivelet was successfully created.' }
        format.json { render :show, status: :created, location: @fivelet }
      else
        format.html { render :new }
        format.json { render json: @fivelet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fivelets/1
  # PATCH/PUT /fivelets/1.json
  def update
    respond_to do |format|
      if @fivelet.update(fivelet_params)
        format.html { redirect_to @fivelet, notice: 'Fivelet was successfully updated.' }
        format.json { render :show, status: :ok, location: @fivelet }
      else
        format.html { render :edit }
        format.json { render json: @fivelet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fivelets/1
  # DELETE /fivelets/1.json
  def destroy
    @fivelet.destroy
    respond_to do |format|
      format.html { redirect_to fivelets_url, notice: 'Fivelet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fivelet
      @fivelet = Fivelet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fivelet_params
      params.require(:fivelet).permit(:title, :author, :suggestion_1, :suggestion_2, :suggestion_3, :suggestion4, :suggestion5)
    end
end
