class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :status, :user_id
  validates :name, presence: true,
                        length: {
                                minimum: 6
                        }
end
