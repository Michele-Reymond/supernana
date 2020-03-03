class AddWebsiteToInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :information, :website, :string
  end
end
