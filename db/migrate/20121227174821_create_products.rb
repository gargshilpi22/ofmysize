class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :gender, :null => false, :default => 'U'

      t.timestamps
    end
  end
end