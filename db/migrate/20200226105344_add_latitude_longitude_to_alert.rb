class AddLatitudeLongitudeToAlert < ActiveRecord::Migration[5.2]
  def change
    add_column :alerts, :latitude, :decimal, precision: 8, scale: 6
    add_column :alerts, :longitude, :decimal, precision: 8, scale: 6
  end
end
