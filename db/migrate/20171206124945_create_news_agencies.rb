class CreateNewsAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :news_agencies do |t|
      t.string :name
      t.string :street_address
      t.string :post_code
      t.string :city

      t.timestamps
    end
  end
end
