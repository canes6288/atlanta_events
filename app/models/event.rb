class Event < ActiveRecord::Base

  def start_time_format(format = "%-I:%M %p")
     start_time.strftime(format)
  end
end
