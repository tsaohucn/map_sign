class Device < ActiveRecord::Base
  belongs_to :user
  has_many :signs
end
