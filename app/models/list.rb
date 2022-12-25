class List < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true #対象項目：title,存在の有無：true(存在しなければならない)
  validates :body, presence: true
  validates :image, presence: true
end
