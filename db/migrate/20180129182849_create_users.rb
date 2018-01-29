class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :username
      t.string :token
      t.string :name
      t.string :profile_pic
      t.string :location
      t.string :email
      t.string :company
      t.string :bio

      t.timestamps
    end
  end
end
