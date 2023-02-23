class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :speciality
      t.text :description
      t.date :graduation
      t.string :image

      t.timestamps
    end
  end
end
