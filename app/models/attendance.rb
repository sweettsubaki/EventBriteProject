class Attendance < ApplicationRecord
    after_create :event_attendance_send

    def event_attendance_send
      UserMailer.event_attendance_email(self).deliver_now
    end
  
end
