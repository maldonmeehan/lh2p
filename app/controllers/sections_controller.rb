class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render :index
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      redirect_to chapters_path
    end
  end

  def show
    @new_section = Section.new
    @section = Section.find(params[:id])
    @chapter = Chapter.find(params[:chapter_id])
    render :show
  end

  private
  def section_params
    params.require(:section).permit(:name, :chapter_id)
  end
end
