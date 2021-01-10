module ApplicationHelper
  # ブック/ナレッジが所持しているタグを取得
  def get_tag(objs)
    tags = []
    objs.each do |obj|
      tag = Tag.find(obj.tag_ids)
      tags.push(tag)
    end
    return tags
  end
end
