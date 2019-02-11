class User < ApplicationRecord
	after_create :welcome_send

	validates :email, presence: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	
	has_many :attendances
	has_many :events, through: :attendances
	has_many :admins, foreign_key: 'admin_id', class_name: "Event"
	has_many :participants, foreign_key: 'participant_id', class_name: "Event"

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

end
