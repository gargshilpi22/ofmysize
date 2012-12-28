class AddNotNullConstraintsToBrands < ActiveRecord::Migration
  def change
    change_column :brands, :name, :string, :null => false
  end
end