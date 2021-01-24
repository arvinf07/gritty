class User < ApplicationRecord
  has_many :workouts
  has_many :comments

  has_secure_password
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true

  def self.from_oauth(auth)
    User.find_or_create_by(provider: auth['provider'], uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.password = SecureRandom.hex(15)
      u.email = auth['info']['email']
    end
  end


end
