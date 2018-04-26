class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.datetime :payday
      t.boolean :status

      t.timestamps
    end
  end
end
