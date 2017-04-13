class UpdateLocation < ActiveRecord::Migration[5.1]
  def change
      reversible do |dir|
        change_table :location do |t|
          dir.up   { t.remove :address, :province
                     t.string :weather
                                       }
          dir.down { t.string :address, :province
                   t.remove :weather
                                       }
        end
      end
  end
end
