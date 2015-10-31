class CreateIpranges < ActiveRecord::Migration
  def change
    create_table :ipranges do |t|
      t.string :crange
      t.string :start
      t.string :end

      t.timestamps null: false
    end
  end
end
