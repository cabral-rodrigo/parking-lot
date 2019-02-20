class AddNameToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :name, :string
  end
end
