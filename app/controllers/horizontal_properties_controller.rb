class HorizontalPropertiesController < ApplicationController
  before_action :set_horizontal_property, only: [:show, :edit, :update, :destroy]
  before_action :set_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /horizontal_properties
  # GET /horizontal_properties.json
  def index
    @horizontal_properties = HorizontalProperty.all
  end

  # GET /horizontal_properties/1
  # GET /horizontal_properties/1.json
  def show
  end

  # GET /horizontal_properties/new
  def new
    @horizontal_property = HorizontalProperty.new
  end

  # GET /horizontal_properties/1/edit
  def edit
  end

  # POST /horizontal_properties
  # POST /horizontal_properties.json
  def create
    @horizontal_property = current_user.horizontal_property.new(horizontal_property_params)
    @horizontal_property.act = @act

    respond_to do |format|
      if @horizontal_property.save
        format.html { redirect_to @horizontal_property.act, notice: 'Horizontal property was successfully created.' }
        format.json { render :show, status: :created, location: @horizontal_property.act }
      else
        format.html { render :new }
        format.json { render json: @horizontal_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horizontal_properties/1
  # PATCH/PUT /horizontal_properties/1.json
  def update
    respond_to do |format|
      if @horizontal_property.update(horizontal_property_params)
        format.html { redirect_to @horizontal_property.act, notice: 'Horizontal property was successfully updated.' }
        format.json { render :show, status: :ok, location: @horizontal_property.act }
      else
        format.html { render :edit }
        format.json { render json: @horizontal_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horizontal_properties/1
  # DELETE /horizontal_properties/1.json
  def destroy
    @horizontal_property.destroy
    respond_to do |format|
      format.html { redirect_to act_path(@act), notice: 'Horizontal property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horizontal_property
      @horizontal_property = HorizontalProperty.find(params[:id])
    end

    def set_act
      @act = Act.find(params[:act_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horizontal_property_params
      params.require(:horizontal_property).permit(:user_id, :act_id, :propiedad, :alicuota, :expensas, :comparece_menor, :nombres_tutor, :fecha_adjudicacion, :fecha_acta_notarial)
    end
end
