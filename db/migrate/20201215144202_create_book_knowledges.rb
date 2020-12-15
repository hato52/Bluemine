class CreateBookKnowledges < ActiveRecord::Migration[6.0]
  def change
    create_table :book_knowledges do |t|
      t.references  :book
      t.references  :knowledge

      t.timestamps
    end
  end
end
