class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
      t.string :address
      t.string :picture
      t.string :confirmation
      t.boolean :covered
      t.boolean :security
      t.boolean :camera
      t.integer :size
      t.boolean :gated
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
