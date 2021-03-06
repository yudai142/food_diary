class Mymenu < ApplicationRecord
  mount_uploader :image, ImageUploader
  enum category_id: {"未指定": 0,"主菜": 1, "副菜": 2, "飲み物": 3, "デザート": 4, "お菓子": 5, "食材": 6, "セット": 7, "弁当": 8, "コンビニ": 9, "その他": 99}
  
  belongs_to :user
  has_many :mymenu_likes
  
end
