class Event < ActiveRecord::Base
  belongs_to :day
  has_one :calendar, through: :day
  has_one :calendar_user, through: :calendar
  has_one :user, through: :calendar_user
  has_many :calendar_users, through: :calendar
  has_many :users, through: :calendar_users
end
