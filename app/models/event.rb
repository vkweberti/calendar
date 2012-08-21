class Event < ActiveRecord::Base

  belongs_to :user

  attr_accessible :name, :description, :date, :repeat

  validates :name, :date, :repeat, :presence => true

  REPEAT = { :day => 1,
             :week => 2,
             :month => 3,
             :year => 4 }

end
