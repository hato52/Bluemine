class AddColumnPageToBookKnowledge < ActiveRecord::Migration[6.0]
  def change
    add_column :book_knowledges, :page, :int
  end
end
