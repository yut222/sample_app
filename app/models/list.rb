class List < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true #対象項目：title,存在の有無：true(存在しなければならない)
  validates :body, presence: true

  #rails cで画像を扱う場合は複雑になるためコメントアウト
  # validates :image, presence: true
end
