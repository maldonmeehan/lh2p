class LessonsController < ApplicationController

  def index
    @lessons = Lesson.rank(:row_order).all
  end

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

  def update_row_order
    @lesson = Lesson.find(lesson_params[:lesson_id])
    @lesson.row_order_position = lesson_params[:row_order_position]
    @lesson.save

    render nothing: true
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
    params.require(:lesson).permit(:name, :content, :row_order_position, :lesson_id)
  end
end
