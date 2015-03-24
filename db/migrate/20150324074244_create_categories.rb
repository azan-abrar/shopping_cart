class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :icon
      t.string :meta_title
      t.string :meta_keywords
      t.text :meta_description

      t.timestamps null: false
    end
  end
end