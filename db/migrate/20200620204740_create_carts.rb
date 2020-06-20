class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.belongs_to :user
      t.boolean :current_cart

      t.timestamps
    end
  end
end
