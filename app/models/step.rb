class Step < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date, :steps
end
