# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).

crumb :root do
  link "Home", root_path
end

crumb :books do
  link "ブック一覧", books_path
end

crumb :show_book do |book|
  link book.title, book_path(book)
  parent :books
end

crumb :new_book do
  link "新規作成", new_book_path
  parent :books
end

crumb :edit_book do |book|
  link "編集", edit_book_path
  parent :books
end

crumb :knowledges do
  link "ナレッジ一覧", knowledges_path
end

crumb :show_knowledge do |knowledge|
  link knowledge.title, knowledge_path(knowledge)
  parent :knowledges
end

crumb :new_knowledge do
  link "新規作成", new_knowledge_path
  parent :knowledges
end

crumb :edit_knowledge do |knowledge|
  link "編集", edit_knowledge_path
  parent :knowledges
end

crumb :show_book_knowledge do |book, knowledge|
  link knowledge.title, book_book_knowledge_path(knowledge)
  parent :show_book, book
end

crumb :tags do
  link "タグ一覧", tags_path
end

crumb :show_tag do |tag|
  link "#" + tag.name, tag_path(tag)
  parent :tags
end
