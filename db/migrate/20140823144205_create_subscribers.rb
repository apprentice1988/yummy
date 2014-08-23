class CreateSubscribers < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
    	t.string :name

      t.timestamps
    end
    add_column :messages, :subscriber_id, :integer
    add_index :messages, :subscriber_id
  end
end
