class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string      :title
      t.text        :detail
      t.references  :user
      t.references  :knowledge
      t.references  :book_tag
      
      t.timestamps
    end
  end
end
