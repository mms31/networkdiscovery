class CreateScanhosts < ActiveRecord::Migration
  def change
    create_table :scanhosts do |t|

      t.timestamps null: false
    end
  end
end
