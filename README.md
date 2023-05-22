# NETFLIX-REPLICA

* Start Point:
```
rails new netflix-replica --css tailwind -T --skip-active-record && cd netflix-replica && subl .
```
* Create Home Page:
```
rails g controller home index
```
* Update routes and run server:
```
bin/dev
```

# Pushing master key to heroku
```
heroku config:set RAILS_MASTER_KEY=`cat config/master.key`
```
