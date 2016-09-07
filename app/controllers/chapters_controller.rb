class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
    @chapter = Chapter.new
    @new_section = Section.new
    render :index
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to chapters_path
    end
  end

  def show
    @chapter = Chapter.find(params[:id])
    render :show
  end

  private
  def chapter_params
    params.require(:chapter).permit(:name)
  end
end
