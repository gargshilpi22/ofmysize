class RenameTypeColumnSize < ActiveRecord::Migration
  def change
    rename_column :sizes, :type, :size_type
  end
end