class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.string :to_user_name
    	t.string :from_user_name
    	t.datetime :create_time
    	t.string :type
    	t.text :content
    	t.string :msgid
    	t.string :picture_url
    	t.string :media_id
    	t.string :format
    	t.string :thumb_media_id
    	t.decimal :location_x
    	t.decimal :location_y
    	t.decimal :scale
    	t.string :label
    	t.string :title
    	t.string :description
    	t.string :url

      t.timestamps
    end
  end
end
