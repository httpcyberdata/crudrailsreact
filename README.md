# CRUD React & Rails App

URL TO TUTORIAL: https://www.youtube.com/watch?v=oyjzi837wME&list=PLvRl6k5LXGmn9DCz_9FiBwXI63fsGY3Ph&index=28&t=134s
TITLE: Let's build a CRUD app with Ruby on Rails and React.js 
What resources helped in errors: 
https://www.appsloveworld.com/ruby/100/32/getting-actioncontrollerroutingerror-no-route-matches-options-users-when

In routes.rb,

```
resources :airlines, params: :slug
```

to 

``` 
resources :airlines, param: slug
```

   Remove the param plural. Params (no) param (yes) in routes.rb
    resources :airlines, param: :slug

...

## Errors:

Attempting to install webpacker & react for the front-end of the API.

### Problem:

webpack binstubs not found.
Have you run rails webpacker:install ?
Make sure the bin directory or binstubs are not included in .gitignore
Exiting! 

#### Solution: 
Instead of directly installing webpacker & react at the same time. Install once a time and run:

    rails webpacker:install 
    Result => Webpacker successfully installed 🎉 🍰
    rails webpacker:install:react Webpacker now supports react.js 🎉

* Ruby version 3.0.0
* Rails version 7.0.4
* System dependencies
  * 'fast_jsonapi' gem (no longer maintained) [](https://github.com/Netflix/fast_jsonapi)
* Configuration
* Database creation
  * Airlines Active Record
  * Reviews Active Record
