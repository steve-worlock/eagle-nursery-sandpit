class Customer < ApplicationRecord
	has_many :transactions 
	validates :custid, presence: true 
	validates :custname, presence: true 
  	validates :custemail, presence: true 
  	validates :custgmail, presence: true
	validates :custid, uniqueness: {case_sensitive: false} 
	validates :custemail, uniqueness: {case_sensitive: false}
	validates :custgmail, uniqueness: {case_sensitive: false}
end
