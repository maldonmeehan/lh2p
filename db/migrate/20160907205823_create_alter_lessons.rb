class CreateAlterLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :row_order, :integer
    remove_column :lessons, :order, :integer
  end
end
