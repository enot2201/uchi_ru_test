class Article < ApplicationRecord
  #расширение молели для обработки столбца статус(завёрнуто в косёрн ибо данный функционал есть  комментария)
  include Visible

  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end