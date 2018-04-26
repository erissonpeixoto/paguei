class AddColunsAndChangesToPayments < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :value, :decimal, :precision => 8, :scale => 2
    add_reference :payments, :expense, index: true
    rename_column :payments, :status, :paid
  end
end
