class User < ApplicationRecord
  has_many :friendships
  has_many :friends, class_name: "User", foreign_key: "friend_id", through: :friendships
end
