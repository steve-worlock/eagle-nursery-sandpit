class TransactionsController < ApplicationController
  
# before_action :set_transaction, only: [:show, :edit, :update, :destroy]

  
# before_action :set_transaction, only: [:show, :edit, :update, :destroy, :indextrans]

  
# GET /transactions
  
# GET /transactions.json
  
	def index   
		custnumber = params[:id]
		@transactions = Transaction.where(custref: custnumber)
	end

  
# GET /transactions/1
 
# GET /transactions.json
  
#	def indextrans
    
#		custnumber = params[:id]
#		@transactions = Transaction.where(custref: custnumber)
#	end

   
# GET /transactions/1.json
  
	def show
  
	end

  
# GET /transactions/new
  
	def new
    
		@transaction = Transaction.new
  
	end

  
# GET /transactions/1/edit
  
	def edit
  
	end

  
# POST /transactionss
  
# POST /accounts.json
  
	def create
    
		@transaction = Transaction.new(transaction_params)

    
		respond_to do |format|
      
			if @transaction.save
        
				format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        						format.json { render :show, status: :created, location: @transaction }
			
else
        
				format.html { render :new }
        
				format.json { render json: @transaction.errors, status: :unprocessable_entity }
      
			end
    
		end
  
	end

  
# PATCH/PUT /transactions/1
  
# PATCH/PUT /transactions/1.json
  
	def update
    
		respond_to do |format|
      
			if @transaction.update(transaction_params)
        
				format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }

        			format.json { render :show, status: :ok, location: @transaction }
		  
      else
        
				format.html { render :edit }
        
				format.json { render json: @transaction.errors, status: :unprocessable_entity }
      
			end
    
		end
  
	end

  
# DELETE /transactions/1
  
# DELETE /stansactions/1.json
  
	def destroy
  
		  @transaction.destroy
    
			respond_to do |format|
      
				format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
 
			        format.json { head :no_content }
			
end
  
	end

  

private
    # Use callbacks to share common setup or constraints between actions.
    

	def set_transaction      
		@transaction = Transaction.find(params[:id])
    
	end

    

# Never trust parameters from the scary internet, only allow the white list through.
    
	def transaction_params
      
		params.require(:transaction).permit(:custref, :tranref, :trandate, :tranamount)
    
	end

end
