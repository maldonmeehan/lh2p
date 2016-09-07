class Lesson < ApplicationRecord
  include RankedModel
  ranks :row_order
  belongs_to :section
  validates :name, :content, :presence => true
  #validates :name, :presence => true
  #validates :content, :presence => true
end
