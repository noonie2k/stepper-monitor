class Step < ActiveRecord::Base
  belongs_to :user
  attr_accessible :date, :steps
  default_scope order: 'date ASC'

  validates :date, uniqueness: true
end
