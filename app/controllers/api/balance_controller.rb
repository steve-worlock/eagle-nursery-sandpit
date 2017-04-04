class Api::BalanceController < ApplicationController

	def index  
		thebalance = 0.0		
		custnumber = params[:id]
		@transactions = Transaction.where(custref: custnumber)
                balancecustomer = Customer.find_by(custid: params[:id])  
 		@transactions.each do |transaction| 
			thebalance = thebalance + transaction.tranamount
                end  
                thebalance.to_d.truncate(2).to_f 
		thestringbalance = thebalance.to.s
                response = balancecustomer + "your current balance is £" + thestringbalance
                render (json: "hello"
	end
end
