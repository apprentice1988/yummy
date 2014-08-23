class CreateMessageResponses < ActiveRecord::Migration
  def change
    create_table :message_responses do |t|
    	t.string :type
    	t.string :from_user_name
    	t.string :to_user_name
    	t.datetime :create_time
    	t.text :content
    	t.string :media_id
    	t.string :title
    	t.string :description
    	t.string :music_url
    	t.string :hq_music_url
    	t.string :thumb_media_id
    	t.integer :article_count
    	t.string :picture_url
    	t.string :url

      t.timestamps
    end
  end
end
