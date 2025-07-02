class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { in: 3..20 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :country, presence: true,  length: { maximum: 50 }
  validates :prefecture, presence: true, length: { maximum: 50 }
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 120 }

  has_many :posts
  has_many :comments
end
