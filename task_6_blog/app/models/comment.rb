class Comment < ApplicationRecord
  #расширение молели для обработки столбца статус(завёрнуто в косёрн ибо данный функционал есть  комментария)
  include Visible

  belongs_to :article
end