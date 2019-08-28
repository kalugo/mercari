class CreateMidCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :mid_categories do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_reference :mid_categories, :top_categories, foreign_key: true, null: false
  end
end
