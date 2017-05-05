require 'test_helper'


class CustomerTest < ActiveSupport::TestCase
  

#DATA PRESENCE NEGATIVE TESTS
	test "Test Customer M1 - a customer record missing a custid is not saved" do
 
            customer = Customer.new(custname: 'unittest 100', custemail: 'unittest100@email.com', custgmail: 					'unittest100@gmail.com')
            assert !customer.save, "saved record with missing custid"
	end

	test "Test Customer M2 - a customer record missing a custname is not saved" do
 
            customer = Customer.new(custid: 99, custemail: 'unittest99@email.com', custgmail: 'unittest99@gmail.com')
            assert !customer.save, "saved record with missing custname"
	end


	test "Test Customer M3 - a customer record missing a custemail is not saved" do
 
            customer = Customer.new(custid: 98, custname: 'unittest 98', custgmail: 'unittest98@gmail.com')
            assert !customer.save, "saved record with missing custemail"
	end

	test "Test Customer M4 - a customer record missing a custgmail is not saved" do
 
            customer = Customer.new(custid: 97, custname: 'unittest 97', custemail: 'unittest97@email.com')
            assert !customer.save, "saved record with missing custgmail"
	end


#UNIQUENESS NEGATIVE TESTS
	test "Test Customer M5 - a customer record contains a non-unique custid" do
 
            customer = Customer.new(custid: 1, custname: 'unittest 96', custemail: 'unittest96@email.com', custgmail: 				'unittest96@gmail.com')
            assert !customer.save, "saved record with non-unique custid"
	end


	#cust name need not be unique so there is no model test for that

#	test "Test Customer M6 - a customer record contains a non-unique custemail" do
 
#            customer = Customer.new(custid: 16, custname: 'unittest 95', custemail: 'testemail1.com', custgmail: 't95@gmail.com')
#            assert !customer.save, "saved record with non-unique custemail"
#	end

#	test "Test Customer M7 - a customer record contains a non-unique custgmail" do
 
#            customer = Customer.new(custid: 17, custname: 'unittest 94', custemail: 't94@email.com', custgmail: 'testgmail1.com')
#            assert !customer.save, "saved record with non-unique custgmail"
#	end


#DATA PRESENCE & UNIQUENESS POSITIVE TESTS
	test "Test Customer M8 - a customer complete & unique customer is saved" do
 
            customer = Customer.new(custid: 93, custname: 'unittest 93', custemail: 'unittest93@email.com', custgmail: 				'unittest93@gmail.com')
            assert customer.save, "failed to create valid record"
	end



end
