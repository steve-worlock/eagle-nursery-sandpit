require 'test_helper'


class TransactionTest < ActiveSupport::TestCase
  
#DATA PRESENCE NEGATIVE TESTS
	test "Test Transaction M1 - a transaction record missing a custref is not saved" do
 
            transaction = Transaction.new(tranref: 92, trandate: '1992-01-01', tranamount: 0.92)
            assert !transaction.save, "saved record with missing custref"
	end

	
	test "Test Transaction M2 - a transaction record missing a tranref is not saved" do
 
            transaction = Transaction.new(custref: 91, trandate: '1991-01-01', tranamount: 0.91)
            assert !transaction.save, "saved record with missing tranref"
	end


	test "Test Transaction M3 - a transaction record missing a trandate is not saved" do
 
            transaction = Transaction.new(custref: 92, tranref: 92, tranamount: 0.92)
            assert !transaction.save, "saved record with missing trandate"
	end


	test "Test Transaction M4 - a transaction record missing a tranamount is not saved" do
 
            transaction = Transaction.new(custref: 89, tranref: 89, trandate: '1989-01-01')
            assert !transaction.save, "saved record with missing tranamount"
	end




#UNIQUENESS NEGATIVE TESTS
	test "Test Transaction M5 - a transaction record containing non-unique custref/tranref combo is not saved" do
 
            transaction = Transaction.new(custref: 1, tranref: 1, trandate: '1988-01-01', tranamount: 0.88)
            assert !transaction.save, "saved transaction record with non-unique custref/tranref combo"
	end



#DATA PRESENCE & UNIQUENESS POSITIVE TESTS
#	test "Test Transaction M6 - a complete record with unique custref/tranref combo and non-unique trandate & tranamount is saved" do
 
#            transaction = Transaction.new(custref: 1, tranref: 87, trandate: "2017-03-02", tranamount: 90.56)		
#            assert transaction.save, "unique custref/tranref combo and non-unique trandate & tranamount not saved"
#	end


end
