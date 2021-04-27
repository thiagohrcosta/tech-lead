class CreateSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :specialities do |t|
      t.string :title
      t.string :language

      t.timestamps
    end
  end
end
