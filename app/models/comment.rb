class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :workout

  validates :content, presence: true, length: { minimum: 5, maximum: 250 }

end 
