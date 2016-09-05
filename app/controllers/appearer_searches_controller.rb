class AppearerSearchesController < ApplicationController
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
end
