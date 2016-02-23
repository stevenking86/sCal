class Calendar < ActiveRecord::Base
  validates :name, presence: true
  has_many :calendar_users
  has_many :users, through: :calendar_users
  has_many :days
  has_many :events, through: :days
end
