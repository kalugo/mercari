class CreateBottomCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :bottom_categories do |t|
      t.string :name, null: false
      t.timestamps
    end
    add_index :bottom_categories, :name
    add_reference :bottom_categories, :mid_categories, foreign_key: true, null: false
  end
end
