class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render :index
  end

  def new
    @section = Section.new
    @chapter = Chapter.find(params[:chapter_id])
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to chapters_path
    end
  end

  def show
    @section = Section.find(params[:id])
    @chapter = Chapter.find(params[:chapter_id])
    render :show
  end

  private
  def section_params
    params.require(:section).permit(:name, :chapter_id)
  end
end
