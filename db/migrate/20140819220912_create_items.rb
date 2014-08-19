class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string :name
    	t.string :picture
    	t.text :description
    	t.integer :price
      t.timestamps
    end
  end
end
