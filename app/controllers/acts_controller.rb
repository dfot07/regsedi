class ActsController < ApplicationController
  before_action :set_act, only: [:show, :edit, :update, :destroy]
  before_action :set_book
  before_action :set_contract
  before_action :set_type_contract
  before_action :authenticate_user!, except: [:index, :show]

  # GET /acts
  # GET /acts.json
  def index
    @acts = current_user.act.page(params[:page])
  end

  # GET /acts/1
  # GET /acts/1.json
  def show
  end

  # GET /acts/new
  def new
    @act = Act.new
  end

  # GET /acts/1/edit
  def edit
  end

  # POST /acts
  # POST /acts.json
  def create
    @act = current_user.act.new(act_params)

    respond_to do |format|
      if @act.save
        format.html { redirect_to @act, notice: 'Act was successfully created.' }
        format.json { render :show, status: :created, location: @act }
      else
        format.html { render :new }
        format.json { render json: @act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acts/1
  # PATCH/PUT /acts/1.json
  def update
    respond_to do |format|
      if @act.update(act_params)
        format.html { redirect_to @act, notice: 'Act was successfully updated.' }
        format.json { render :show, status: :ok, location: @act }
      else
        format.html { render :edit }
        format.json { render json: @act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acts/1
  # DELETE /acts/1.json
  def destroy
    @act.destroy
    respond_to do |format|
      format.html { redirect_to acts_url, notice: 'Act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_act
      @act = Act.find(params[:id])
    end

    def set_book
      @books = Book.all
    end

    def set_book_id
      @book = Book.find(params[:id])
    end

    def set_contract
      @contracts = Contract.all
    end

    def set_type_contract
      @type_contracts = TypeContract.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def act_params
      params.require(:act).permit(:user_id, :descripcion, :especificacion, :tipo, :libro, :repertorio, :fecha_repertorio, :inscripcion, :fecha_inscripcion, :cuantia, :unidad)
    end
end
