class FixAlertsColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :alerts, :started_ad, :started_at
    rename_column :alerts, :ended_ad, :ended_at
  end
end
