class Api::TransactionsController < ApplicationController

	def index   
		custnumber = params[:id]
		@transactions = Transaction.where(custref: custnumber) 
                render json: @transactions
	end

 
end  