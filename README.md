# How to run demo

1. Build image `docker build -t minver:dev .`
2. Run container `docker run --name minver_test -d minver:dev`
3. Add start version tag to dbt_sugar.git repo `git tag -a "v1.0.0" -m "start tag"`
4. Push new tag to repo `git push --tags`
5. Go to tty container `docker exec -it $(docker ps -aqf "name=minver_test") bash`
6. Go to repo dir inside container `cd dbt_sugar`
7. Generate current version of repo `minver -t v -v e -p build`
8. Add some new commits to repo, check how versions is change
9. Add new version tag to dbt_sugar.git repo `git tag -a "v1.0.1" -m "new tag"`
10. Push new tag to repo `git push --tags`
11. Check how patch versions is change `minver -t v -v e -p build`
12. Get only main version `minver -t v -v e -p build | sed -n 's/^\(.*\)-\(.*\)$/\1/p`
13. Get only build version `minver -t v -v e -p build | sed -n 's/^\(.*\)-\(.*\)$/\2/p`