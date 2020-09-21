class AddPardNumberToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :part_number, :string
    add_index :products, :part_number
  end
end