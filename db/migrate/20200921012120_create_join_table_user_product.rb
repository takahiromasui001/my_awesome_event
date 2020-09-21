class CreateJoinTableUserProduct < ActiveRecord::Migration[6.0]
  def change
    create_join_table :users, :products
  end
end
