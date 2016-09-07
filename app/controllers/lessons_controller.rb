class LessonsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:id])
    @section = Section.find(params[:section_id])
    @chapter = Chapter.find(params[:chapter_id])
    render :show
  end

  def new
    @lesson = Lesson.new
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:section_id])
  end

  def create
    @lesson = Lesson.new(lesson_params)
    chapter = Chapter.find(params[:chapter_id])
    section = Section.find(params[:section_id])
    @lesson.section = section
    if @lesson.save
      redirect_to chapter_section_path(chapter, section)
    end
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :content)
  end
end
