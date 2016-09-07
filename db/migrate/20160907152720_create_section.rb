class CreateSection < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :order
      t.integer :chapter_id
    end
  end
end
