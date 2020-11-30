class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string      :login_id
      t.string      :password_digest
      t.references  :book
      t.references  :knowledge
      
      t.timestamps
    end
  end
end
