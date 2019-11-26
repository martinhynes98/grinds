class CreateTutors < ActiveRecord::Migration[5.2]
  def change
    create_table :tutors do |t|
      t.string :name
      t.integer :subject
      t.decimal :price, precision: 8, scale: 2
      t.text :about
      t.string :image_url
      t.string :username

      t.timestamps
    end
  end
end
