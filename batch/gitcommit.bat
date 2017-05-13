REM Select the correct directory to issue rake command to re-instantiate databases
REM ..
git remote -v
git remote rm origin
git remote -v
git remote add origin https://github.com/steve-worlock/eagle-nursery
git remote -v
git push -f origin master
git remote rm origin
git remote -v
git remote add origin https://github.com/steve-worlock/eagle-nursery-sandpit
git remote -v


