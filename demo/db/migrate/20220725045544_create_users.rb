class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
 
      t.timestamps
    end
  end
  def change_password
    create_table :passwords do |t|
      t.string :new_password
      t.string :string,
      t.string :confirm_new_password
      t.string :string

      t.timestamps
    end
  end
end
