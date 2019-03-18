class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :password, length: { in: 8..32 }
  validates :password_confirmation, length: { in: 8..32 }
  validates :password, format: { with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/}
  validates :password_confirmation, format: { with: /([0-9].*[a-zA-Z]|[a-zA-Z].*[0-9])/}
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :name, length: { maximum: 15}

  has_secure_password

  has_many :topics
end
