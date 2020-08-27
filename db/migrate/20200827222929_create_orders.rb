class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.belongs_to :user_id, null: false, foreign_key: true
      t.belongs_to :bakery_id, null: false, foreign_key: true
      t.integer :price
      t.string :dough

      t.timestamps
    end
  end
end
