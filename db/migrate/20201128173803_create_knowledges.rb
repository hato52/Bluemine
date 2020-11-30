class CreateKnowledges < ActiveRecord::Migration[6.0]
  def change
    create_table :knowledges do |t|
      t.string      :title
      t.text        :content
      t.references  :user
      t.references  :book
      t.references  :knowledge_tag
      
      t.timestamps
    end
  end
end
