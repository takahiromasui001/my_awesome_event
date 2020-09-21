class RemovePartNumberFromProducts < ActiveRecord::Migration[6.0]
  def up
    remove_column :products, :part_number, :string
  end

  def down
    add_column :products, :part_number, :string
    add_index :products, :part_number
  end
end
