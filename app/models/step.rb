class Step < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date, :steps

  validates :date, uniqueness: true
end
