class User < ActiveRecord::Base
  attr_accessible :email, :lastname, :name, :username
end
