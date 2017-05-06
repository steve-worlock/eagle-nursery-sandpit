REM Select the correct directory to issue rake command to re-instantiate databases
REM
cd c:\ror\eagleibank2
git status
git add *.*
git remote -v
git remote rm origin
git remote add arigin https://steve-worlock/eagle-nursery
git remote -v
git commit -m ‘Updated build number’
git push -u origin master

