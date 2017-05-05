REM temporarily substitutes model definitions with associations removed to enable clean reseeding of data
cd c:\ror\eagleibank2\app\models
del transaction.rb 
copy transaction_brake_associations.rb transaction.rb
cd c:\ror\eagleibank2
echo "model associations broken to allow data seeding"
