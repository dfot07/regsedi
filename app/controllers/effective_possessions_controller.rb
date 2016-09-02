class EffectivePossessionsController < ApplicationController
  before_action :set_effective_possession, only: [:show, :edit, :update, :destroy]
  before_action :set_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /effective_possessions
  # GET /effective_possessions.json
  def index
    @effective_possessions = EffectivePossession.all
  end

  # GET /effective_possessions/1
  # GET /effective_possessions/1.json
  def show
  end

  # GET /effective_possessions/new
  def new
    @effective_possession = EffectivePossession.new
  end

  # GET /effective_possessions/1/edit
  def edit
  end

  # POST /effective_possessions
  # POST /effective_possessions.json
  def create
    @effective_possession = current_user.effective_possession.new(effective_possession_params)
    @effective_possession.act = @act

    respond_to do |format|
      if @effective_possession.save
        format.html { redirect_to @effective_possession.act, notice: 'Effective possession was successfully created.' }
        format.json { render :show, status: :created, location: @effective_possession.act }
      else
        format.html { render :new }
        format.json { render json: @effective_possession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /effective_possessions/1
  # PATCH/PUT /effective_possessions/1.json
  def update
    respond_to do |format|
      if @effective_possession.update(effective_possession_params)
        format.html { redirect_to @effective_possession.act, notice: 'Effective possession was successfully updated.' }
        format.json { render :show, status: :ok, location: @effective_possession.act }
      else
        format.html { render :edit }
        format.json { render json: @effective_possession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /effective_possessions/1
  # DELETE /effective_possessions/1.json
  def destroy
    @effective_possession.destroy
    respond_to do |format|
      format.html { redirect_to act_path(@act), notice: 'Effective possession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_effective_possession
      @effective_possession = EffectivePossession.find(params[:id])
    end

    def set_act
      @act = Act.find(params[:act_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def effective_possession_params
      params.require(:effective_possession).permit(:user_id, :act_id, :numero_acuerdo, :causante, :fecha_defuncion, :heredero, :conyuge_sobreviviente)
    end
end
