class CreateSizes < ActiveRecord::Migration
  def change
    create_table :sizes do |t|
      t.string :name, :null => false
      t.string :type, :null => false, :default => 'R'

      t.timestamps
    end
  end
end