class PagesController < ApplicationController
  def index
    @page = Page.all
  end

  def create
    Page.create!(page_params)
    redirect_to root_path
  end

  private

  def page_params
    # binding.pry
    params.require(:page).permit( :id, :image)
  end
end
