class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]
  before_action :set_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /assessments
  # GET /assessments.json
  def index
    @assessments = Assessment.all
  end

  # GET /assessments/1
  # GET /assessments/1.json
  def show
  end

  # GET /assessments/new
  def new
    @assessment = Assessment.new
  end

  # GET /assessments/1/edit
  def edit
  end

  # POST /assessments
  # POST /assessments.json
  def create
    @assessment = current_user.assessment.new(assessment_params)
    @assessment.act = @act

    respond_to do |format|
      if @assessment.save
        format.html { redirect_to @assessment.act, notice: 'Assessment was successfully created.' }
        format.json { render :show, status: :created, location: @assessment.act }
      else
        format.html { render :new }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessments/1
  # PATCH/PUT /assessments/1.json
  def update
    respond_to do |format|
      if @assessment.update(assessment_params)
        format.html { redirect_to @assessment, notice: 'Assessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assessment.act }
      else
        format.html { render :edit }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessments/1
  # DELETE /assessments/1.json
  def destroy
    @assessment.destroy
    respond_to do |format|
      format.html { redirect_to act_path(@act), notice: 'Assessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @assessment = Assessment.find(params[:id])
    end

    def set_act
      @act = Act.find(params[:act_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_params
      params.require(:assessment).permit(:user_id, :act_id, :posee_gravamen, :tipo_gravamen, :genera_gravamen, :tipo_genera_gravamen, :fecha_constitucion, :fecha_cancelacion)
    end
end
