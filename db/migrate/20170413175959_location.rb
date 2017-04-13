class Location < ActiveRecord::Migration[5.0]
  def change
    create_table :location do |t|
     t.string :address
     t.string :city
     t.string :province
   end

  end
end
