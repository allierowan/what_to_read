class User < ApplicationRecord
  has_many :ratings
  validates :email, uniqueness: true
  validates :password, presence: true

def password=(unhashed_password)
  @_password = BCrypt::Password.create(unhashed_password)
  self.password_hash = @_password
end

def password
  @_password ||= BCrypt::Password.new(password_hash)
end
end
