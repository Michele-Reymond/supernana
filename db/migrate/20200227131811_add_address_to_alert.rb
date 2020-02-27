class AddAddressToAlert < ActiveRecord::Migration[5.2]
  def change
    add_column :alerts, :address, :string
  end
end
