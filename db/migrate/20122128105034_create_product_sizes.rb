class CreateProductSizes < ActiveRecord::Migration
  def change
    create_table :product_sizes do |t|
      t.integer :product_id
      t.integer :size_id

      t.timestamps
    end
  end
end