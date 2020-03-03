class CreateInformation < ActiveRecord::Migration[5.2]
  def change
    create_table :information do |t|
      t.string :title
      t.text :description
      t.string :phone_number
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
