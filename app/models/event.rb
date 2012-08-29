class Event < ActiveRecord::Base

  has_event_calendar

  belongs_to :user

  attr_accessible :name, :description, :repeat, :start_at, :end_at

  validates :name, :start_at, :end_at, :presence => true

  REPEAT = { :day => 1,
             :week => 2,
             :month => 3,
             :year => 4 }

end
