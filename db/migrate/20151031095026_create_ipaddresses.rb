class CreateIpaddresses < ActiveRecord::Migration
  def change
    create_table :ipaddresses do |t|
      t.string :ipaddress
      t.string :iprange
      t.boolean :pingable

      t.timestamps null: false
    end
  end
end
