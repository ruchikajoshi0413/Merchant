class CreateMerchantids < ActiveRecord::Migration[7.0]
  def change
    create_table :merchantids do |t|
      t.string :idname
      t.string :idproof
      t.string :status
      t.timestamps
    end
  end
end
