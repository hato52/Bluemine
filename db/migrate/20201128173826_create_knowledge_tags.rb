class CreateKnowledgeTags < ActiveRecord::Migration[6.0]
  def change
    create_table :knowledge_tags do |t|
      t.references  :knowledge
      t.references  :tag
      
      t.timestamps
    end
  end
end
