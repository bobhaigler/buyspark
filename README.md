# gratitude-lp

This is a barebones Ruby app using the [Sinatra](http://www.sinatrarb.com) framework.

## Running Locally

Install [Bundler](http://bundler.io) if you don't have it:
```
gem install bundler
```

Then run the sinatra app.
```sh
cd gratitude-lp
bundle    # only needed the first time, or if you add a gem
foreman start
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## Deploying to Heroku

Install the [Heroku Toolbelt](https://toolbelt.heroku.com), then:

```
git push heroku master
heroku open
```