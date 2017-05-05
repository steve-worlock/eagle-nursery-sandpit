class Transaction < ApplicationRecord

  #belongs_to :customer
  validates_uniqueness_of :tranref, :scope => :custref
  validates :custref, presence: true 
  validates :tranref, presence: true 
  validates :trandate, presence: true 
  validates :tranamount, presence: true 
end
