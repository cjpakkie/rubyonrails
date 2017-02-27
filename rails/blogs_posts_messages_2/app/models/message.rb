class Message < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :author, :message, presence: true
  validates :author, :message, length: { minimum: 2 }
end
