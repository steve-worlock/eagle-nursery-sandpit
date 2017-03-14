class CreateVersionnumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :versionnumbers do |t|
      t.integer :apprelease
      t.integer :contentrelease
      t.integer :webappversion
      t.integer :mobileappversion

      t.timestamps
    end
  end
end
