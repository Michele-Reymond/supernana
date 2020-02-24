class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.datetime :started_ad
      t.datetime :ended_ad
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
