class AddPriceToPublicProfiles < ActiveRecord::Migration[6.1]
  def change
    add_column :public_profiles, :price, :integer
  end
end
