class ChangeProductsPrice < ActiveRecord::Migration[6.0]
  def up
    change_column :products, :price, :string
  end

  def down
    change_column :products, :price, :integer
  end
end
