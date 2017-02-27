class Blog < ApplicationRecord
  has_many :users, through: :owners
  has_many :owners
  has_many :posts
  has_many :messages, through: :posts

  validates :name, :description, presence: true, length: { minimum: 2 }
end
