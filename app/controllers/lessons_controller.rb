class LessonsController < ApplicationController

  def show
    @lesson = Lesson.find(params[:id])
    @section = Section.find(params[:section_id])
    @chapter = Chapter.find(params[:chapter_id])
    render :show
  end
end
