cd c:\ror\eagleibank
call rake db:schema:load & echo "done"
timeout /t 20
cd c:\ror\eagleibank\app\models
del transaction.rb 
echo "2"
copy transaction_brake_dep.rb transaction.rb
echo "3"
cd c:\ror\eagleibank
call rake db:seed
timeout /t 20
echo "5"
cd c:\ror\eagleibank\app\models
del transaction.rb
echo "6"
copy transaction_backup.rb transaction.rb
cd c:\ror\eagleibank\batch
timeout /t 20
echo "errorlevel"
echo %ERRORLEVEL%
timeout /t 20
echo "errorlevel"
echo %ERRORLEVEL%
timeout /t 20

