class Goal < ApplicationRecord
  validates :name, presence: true
  validates :future, presence: true
  validates :now, presence: true
  validates :past, presence: true
  validates :start_date, presence: true
  validates :finish_date, presence: true
  validates :study_time, presence: true
end
