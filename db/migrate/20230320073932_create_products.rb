class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.references :category, null: false, foreign_key: true
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end

