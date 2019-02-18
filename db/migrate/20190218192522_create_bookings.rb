class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :availability
      t.string :status
      t.date :date
      t.references :parking, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
