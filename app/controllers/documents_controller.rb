class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  before_action :set_act
  before_action :authenticate_user!, except: [:index, :show]

  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = current_user.document.new(document_params)
    @document.act = @act

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document.act, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document.act }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document.act, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document.act }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to act_path(@act), notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    def set_act
      @act = Act.find(params[:act_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:user_id, :act_id, :notaria, :canton, :fecha_escritura)
    end
end
