class Attendance < ApplicationRecord
	after_create :presence_send

	belongs_to :event
	belongs_to :participant, class_name: "User", optional: true

  def presence_send
    AttendanceMailer.presence_email(self).deliver_now
  end
end