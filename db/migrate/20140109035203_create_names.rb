class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
    	t.string :name
    	t.string :order
    	t.integer :number
      t.timestamps
    end
  end
end
