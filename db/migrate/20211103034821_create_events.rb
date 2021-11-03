class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :company_name
      t.string :about
      t.string :email
      t.string :phone
      t.string :web_link
      t.string :photo
      t.string :street
      t.string :city
      t.string :state
      t.string :postal
      t.integer :available_spots
      t.string :price
      t.string :currency

      t.timestamps
    end
  end
end
