REM Reinstates the model associations following database seeding
cd c:\ror\eagleibank2\app\models
del transaction.rb
copy transaction_backup.rb transaction.rb
cd c:\ror\eagleibank2
echo "model associations reestablished"