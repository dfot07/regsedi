class AppearerSearchesController < ApplicationController

  before_action :set_act

  def new
    @search = AppearerSearch.new
  end

  def create
    @search = AppearerSearch.create(search_params)
    redirect_to @search
  end

  def show
    @search = AppearerSearch.find(params[:id])
  end

  private

  def search_params
    params.require(:appearer_search).permit(:apellidos, :nombres, :identificacion)
  end

  def set_act
      @acts = Act.all
    end


end
