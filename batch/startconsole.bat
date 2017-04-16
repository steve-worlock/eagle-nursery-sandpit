cd c:\ror\eagleibank
call rails console
timeout /t 20
call Customer.all
timeout /t 20
call Transaction.all

