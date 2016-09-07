class Lesson < ApplicationRecord
  include RankedModel
  ranks :row_order
  belongs_to :section
  validates :name, :content, :presence => true

  def next
    Lesson.where("row_order > ?", row_order).order("row_order ASC").first
  end

  def prev
    Lesson.where("row_order < ?", row_order).order("row_order DESC").first
  end
end
