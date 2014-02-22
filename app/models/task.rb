class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :status
end
