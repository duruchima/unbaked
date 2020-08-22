class CreateDoughs < ActiveRecord::Migration[6.0]
  def change
    create_table :doughs do |t|
      t.string :name
      t.integer :baking_time

      t.timestamps
    end
  end
end
