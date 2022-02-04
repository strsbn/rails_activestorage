class PagesController < ApplicationController
  def index
    # @page = Page.new
    @page = Page.all
  end

  def show

  end

  def create
    page = Page.create!(page_params)
    # binding.pry
    # @page = Page.find_by(id: page_params[:id])
    # @page.image.attache(page_params[:image])
    # @page.save
    redirect_to root_path
  end

  private

  def page_params
    # binding.pry
    params.require(:page).permit( :id, :image)
  end
end
