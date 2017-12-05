class AddSubscriberToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :subscriber, :boolean, default: false
  end
end
