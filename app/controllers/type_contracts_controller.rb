class TypeContractsController < ApplicationController
  before_action :set_type_contract, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /type_contracts
  # GET /type_contracts.json
  def index
    @type_contracts = TypeContract.all
  end

  # GET /type_contracts/1
  # GET /type_contracts/1.json
  def show
  end

  # GET /type_contracts/new
  def new
    @type_contract = TypeContract.new
  end

  # GET /type_contracts/1/edit
  def edit
  end

  # POST /type_contracts
  # POST /type_contracts.json
  def create
    @type_contract = current_user.type_contract.new(type_contract_params)

    respond_to do |format|
      if @type_contract.save
        format.html { redirect_to @type_contract, notice: 'Type contract was successfully created.' }
        format.json { render :show, status: :created, location: @type_contract }
      else
        format.html { render :new }
        format.json { render json: @type_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_contracts/1
  # PATCH/PUT /type_contracts/1.json
  def update
    respond_to do |format|
      if @type_contract.update(type_contract_params)
        format.html { redirect_to @type_contract, notice: 'Type contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_contract }
      else
        format.html { render :edit }
        format.json { render json: @type_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_contracts/1
  # DELETE /type_contracts/1.json
  def destroy
    @type_contract.destroy
    respond_to do |format|
      format.html { redirect_to type_contracts_url, notice: 'Type contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_contract
      @type_contract = TypeContract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_contract_params
      params.require(:type_contract).permit(:user_id, :contract_id, :descripcion)
    end
end
