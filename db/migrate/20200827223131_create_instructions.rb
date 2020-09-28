class CreateInstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :instructions do |t|
      t.belongs_to :dough, null: false, foreign_key: true
      t.string :sweetness

      t.timestamps
    end
  end
end
