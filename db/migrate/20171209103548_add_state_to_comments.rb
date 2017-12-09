class AddStateToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :state, :string
  end
end
