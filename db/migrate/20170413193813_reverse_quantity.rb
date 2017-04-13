class ReverseQuantity < ActiveRecord::Migration[5.1]
  def change
    reversible do |dir|
     change_table :parts do |t|
       dir.up   { t.change :quantity, :float }
       dir.down { t.change :quantity, :integer }
     end
   end

  end
end
