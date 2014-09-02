class AddEventIdToResponses < ActiveRecord::Migration
  def change
  	add_column :responses, :event_id, :integer
  	add_index :responses, :event_id
  end
end
