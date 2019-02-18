class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :picture
      t.integer :rating_user
      t.date :date
      t.references :user, foreign_key: true
      t.references :parking, foreign_key: true

      t.timestamps
    end
  end
end
