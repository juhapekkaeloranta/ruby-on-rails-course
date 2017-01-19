# Ruby on Rails -[course](https://github.com/mluukkai/WebPalvelinohjelmointi2017)

Application running on [heroku](https://blooming-river-28802.herokuapp.com/breweries)

## Development



### Deploying
* Push code to heroku 
* `git push heroku master`
* Migrate db changes
* `heroku run rake db:migrate`
* Seed db with testdata
* `heroku run rake db:seed`

### Admin

* Heroku console
* `heroku run console`