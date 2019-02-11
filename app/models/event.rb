class Event < ApplicationRecord

  validates :start_date, presence: true
  validates :duration, presence: true, numericality: { greater_than: 0 }
  validates :title, presence: true, length: {minimum: 5, maximum: 140}
  validates :description, presence: true, length: {minimum: 20, maximum: 1000}
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 1000 }
  validates :location, presence: true

	belongs_to :admin, class_name: "User", optional: true
	has_many :attendances

end
