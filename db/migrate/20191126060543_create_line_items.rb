class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.references :tutor, foreign_key: true
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
