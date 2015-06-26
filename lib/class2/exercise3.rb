# 5 points
#
# If a person is 1,160,000,000 seconds old, display their age in years. As
# always, assume leap years don't exist.

def seconds_to_minutes(seconds)
  seconds / 60
end

their_minutes = seconds_to_minutes(1_160_000_000)

def minutes_to_hours(minutes)
  minutes / 60
end

their_hours = minutes_to_hours(their_minutes)

def hours_to_days(hours)
  hours / 24
end

their_days = hours_to_days(their_hours)

def days_to_years(days)
  days / 365
end

their_years = days_to_years(their_days)
puts their_years
