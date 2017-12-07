class AddCoordinatesToNewsAgency < ActiveRecord::Migration[5.1]
  def change
    add_column :news_agencies, :latitude, :float
    add_column :news_agencies, :longitude, :float
  end
end
