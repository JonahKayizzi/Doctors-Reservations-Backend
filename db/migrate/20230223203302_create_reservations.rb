# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :date
      t.string :city

      t.timestamps
    end
  end
end
