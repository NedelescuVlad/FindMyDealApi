class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :description
      t.string :mail
      t.string :encrypted_password

      t.timestamps
    end
  end
end
