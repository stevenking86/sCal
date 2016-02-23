class Calendar < ActiveRecord::Base
  validates :name, presence: true
  has_many :calendar_users
  has_many :users, through: :calendar_users
  has_many :days
  has_many :events, through: :days


DAYS = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

MONTHS = {"01": (1..31).to_a, "02": (1..29).to_a, "03": (1..31).to_a, "04": (1..30).to_a, "05": (1..31).to_a, "06": (1..30).to_a, "07": (1..31).to_a, "08": (1..31).to_a, "09": (1..30).to_a, "10": (1..31).to_a, "11": (1..30), "12": (1..31).to_a}



  def generate_days
    x = 0
    MONTHS.each do |mo, dates|
      dates.each do |date|
        d = DAYS[x]
        Day.create(name: d, calendar_id: self.id, date: "2016-#{mo}-#{date}")
        if x == 6
            x = 0
        else
            x += 1
        end
      end
    end
  end


end

# This worked in console: Day.create(name: "Tuesday", calendar_id: 99, date: "2016-09-09")

# This is a functional calendar creator:

# MONTHS = {January: (1..31).to_a, February: (1..29).to_a, March: (1..31).to_a, April: (1..30).to_a, May: (1..31).to_a, June: (1..30).to_a, July: (1..31).to_a, August: (1..31).to_a, September: (1..30).to_a, October: (1..31).to_a, November: (1..30), December: (1..31).to_a}

# DAYS = ["Friday", "Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday"]
# x = 0
# MONTHS.each do |mo, dates|
#     dates.each do |date|
#         d = DAYS[x]
#         puts "#{mo} #{date} #{d}"
#         if x == 6
#             x = 0
#         else
#             x += 1
#         end
#     end
# end

