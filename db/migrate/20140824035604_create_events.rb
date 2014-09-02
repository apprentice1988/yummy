class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.string :type
    	t.string :from_user_name
    	t.string :to_user_name
    	t.datetime :create_time
    	t.decimal :latitude
    	t.decimal :longitude
    	t.decimal :precision
    	t.integer :subscriber_id
      t.timestamps
    end
  end
end
