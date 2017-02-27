class Post < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  has_many :messages

  validates :title, :content, presence:true
  validates :title, :content, length: { minimum: 5 }
end
