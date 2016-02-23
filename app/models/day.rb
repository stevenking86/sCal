class Day < ActiveRecord::Base
  belongs_to :calendar
  has_many :events
  has_many :calendar_users, through: :calendar
  has_many :users, through: :calendar_users
end
