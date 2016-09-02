class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  before_action :set_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = current_user.property.new(property_params)
    @property.act = @act

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property.act, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property.act }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property.act, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property.act }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to act_path(@act), notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    def set_act
      @act = Act.find(params[:act_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:user_id, :act_id, :numero_predio, :clave_catastral, :descripcion, :provincia, :zona, :superficie, :ubicacion, :lindero, :parroquia, :canton)
    end
end
