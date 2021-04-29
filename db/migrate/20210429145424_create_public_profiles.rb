class CreatePublicProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :public_profiles do |t|
      t.string :name
      t.string :description
      t.references :user, null: false, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
