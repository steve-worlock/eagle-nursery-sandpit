class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :custref
      t.integer :tranref
      t.date :trandate
      t.float :tranamount

      t.timestamps
    end
  end
end
