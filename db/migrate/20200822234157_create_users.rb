class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.integer :age
      t.integer :zip_code

      t.timestamps
    end
  end
end
