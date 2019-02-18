class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.string :address
      t.string :picture
      t.string :confirmation
      t.boolean :covered, default: false
      t.boolean :security, default: false
      t.boolean :camera, default: false
      t.string :size
      t.boolean :gated, default: false
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
