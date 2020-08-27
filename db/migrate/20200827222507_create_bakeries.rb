class CreateBakeries < ActiveRecord::Migration[6.0]
  def change
    create_table :bakeries do |t|
      t.has_many :dough_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
