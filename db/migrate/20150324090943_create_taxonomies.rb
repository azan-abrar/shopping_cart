class CreateTaxonomies < ActiveRecord::Migration
  def change
    create_table :taxonomies do |t|
      t.references :parent, index: true
      t.string :name
      t.string :slug
      t.integer :order
      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
