class User < ActiveRecord::Base
  has_many :steps
  attr_accessible :name

  validates :name, uniqueness: true
end
