class CreateProductBrands < ActiveRecord::Migration
  def change
    create_table :product_brands do |t|
      t.integer :product_id
      t.integer :brand_id

      t.timestamps
    end
  end
end
