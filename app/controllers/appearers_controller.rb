class AppearersController < ApplicationController
  before_action :set_appearer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /appearers
  # GET /appearers.json
  def index
    @appearers = Appearer.all
  end

  # GET /appearers/1
  # GET /appearers/1.json
  def show
  end

  # GET /appearers/new
  def new
    @appearer = Appearer.new
  end

  # GET /appearers/1/edit
  def edit
  end

  # POST /appearers
  # POST /appearers.json
  def create
    @appearer = Appearer.new(appearer_params)

    respond_to do |format|
      if @appearer.save
        format.html { redirect_to @appearer, notice: 'Appearer was successfully created.' }
        format.json { render :show, status: :created, location: @appearer }
      else
        format.html { render :new }
        format.json { render json: @appearer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appearers/1
  # PATCH/PUT /appearers/1.json
  def update
    respond_to do |format|
      if @appearer.update(appearer_params)
        format.html { redirect_to @appearer, notice: 'Appearer was successfully updated.' }
        format.json { render :show, status: :ok, location: @appearer }
      else
        format.html { render :edit }
        format.json { render json: @appearer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appearers/1
  # DELETE /appearers/1.json
  def destroy
    @appearer.destroy
    respond_to do |format|
      format.html { redirect_to appearers_url, notice: 'Appearer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appearer
      @appearer = Appearer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appearer_params
      params.require(:appearer).permit(:user_id, :act_id, :tipo_persona, :razon_social, :apellido, :nombre, :tipo_interviniente, :calidad_compareciente, :tipo_identificacion, :identificacion, :estado_civil, :apellido_conyuge, :identificacion_conyuge, :separacion_bien)
    end
end
