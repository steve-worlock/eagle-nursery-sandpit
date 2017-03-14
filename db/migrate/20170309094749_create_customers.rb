class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.integer :custid
      t.string :custname
      t.string :custemail
      t.string :custgmail

      t.timestamps
    end
  end
end
