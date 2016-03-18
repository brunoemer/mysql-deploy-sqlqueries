# mysql-deploy-sqlqueries
Script to deploy SQL queries from sql files in to mysql database

Install in a submodule from git:
git submodule add git@github.com:brunoemer/mysql-deploy-sqlqueries.git
git submodule init
git submodule update
git submodule foreach git pull origin master

Run automatically with got hook:

touch .git/hooks/post-merge
chmod +x .git/hooks/post-merge

echo '#!/bin/bash' > .git/hooks/post-merge
echo './mysql-deploy-sqlqueries/deploy-sqlqueries.sh' >> .git/hooks/post-merge

