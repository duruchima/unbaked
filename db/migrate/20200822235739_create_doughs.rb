class CreateDoughs < ActiveRecord::Migration[6.0]
  def change
    create_table :doughs do |t|
      t.string :name
      t.integer :rating
      t.string :difficulty_level
      t.integer :bake_time

      t.timestamps
    end
  end
end
