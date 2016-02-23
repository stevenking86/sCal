class User < ActiveRecord::Base
  validates :username, presence: true
  has_many :calendar_users
  has_many :calendars, through: :calendar_users
  has_many :days, through: :calendars
  has_many :events, through: :days

  has_secure_password



end
