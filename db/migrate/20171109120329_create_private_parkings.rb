class CreatePrivateParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :private_parkings do |t|
      t.string :name
      t.string :owner
      t.integer :parkingspaces
      t.text :parkingcost
      t.integer :currentparkingcost
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
