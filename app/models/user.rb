class User < ApplicationRecord
  has_secure_password
  # before_save { self.email = email.doencase }
  validates :name, presence: true, length: { maximum:25 }
  validates :email, presence: true, length: { maximum:255 },
                    uniqueness: true
  validates :password, presence: true, length: { minimum:3 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost? BCrypt::Engine::MIN_COST
                              BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
