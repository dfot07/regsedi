class MarginalizationsController < ApplicationController
  before_action :set_marginalization, only: [:show, :edit, :update, :destroy]
  before_action :set_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /marginalizations
  # GET /marginalizations.json
  def index
    @marginalizations = Marginalization.all
  end

  # GET /marginalizations/1
  # GET /marginalizations/1.json
  def show
  end

  # GET /marginalizations/new
  def new
    @marginalization = Marginalization.new
  end

  # GET /marginalizations/1/edit
  def edit
  end

  # POST /marginalizations
  # POST /marginalizations.json
  def create
    @marginalization = Marginalization.new(marginalization_params)
    @marginalization.act = @act 

    respond_to do |format|
      if @marginalization.save
        format.html { redirect_to @marginalization.act, notice: 'Marginalization was successfully created.' }
        format.json { render :show, status: :created, location: @marginalization.act }
      else
        format.html { render :new }
        format.json { render json: @marginalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marginalizations/1
  # PATCH/PUT /marginalizations/1.json
  def update
    respond_to do |format|
      if @marginalization.update(marginalization_params)
        format.html { redirect_to @marginalization.act, notice: 'Marginalization was successfully updated.' }
        format.json { render :show, status: :ok, location: @marginalization.act }
      else
        format.html { render :edit }
        format.json { render json: @marginalization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marginalizations/1
  # DELETE /marginalizations/1.json
  def destroy
    @marginalization.destroy
    respond_to do |format|
      format.html { redirect_to act_path(@act), notice: 'Marginalization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marginalization
      @marginalization = Marginalization.find(params[:id])
    end

    def set_act
      @act = Act.find(params[:act_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marginalization_params
      params.require(:marginalization).permit(:user_id, :act_id, :marginacion, :ultima_modificacion, :canton_registro)
    end
end
