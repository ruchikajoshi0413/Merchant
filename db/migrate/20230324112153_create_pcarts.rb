class CreatePcarts < ActiveRecord::Migration[7.0]
  def change
    create_table :pcarts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity


      t.timestamps
    end
  end
end
