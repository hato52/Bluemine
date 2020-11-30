class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string      :name
      t.references  :book_tag
      t.references  :knowledge_tag
      
      t.timestamps
    end
  end
end
