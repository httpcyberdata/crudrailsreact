# README

This README would normally document whatever steps are necessary to get the
application up and running.

URL TO TUTORIAL: https://www.youtube.com/watch?v=oyjzi837wME&list=PLvRl6k5LXGmn9DCz_9FiBwXI63fsGY3Ph&index=28&t=134s
TITLE: Let's build a CRUD app with Ruby on Rails and React.js 
TIMING: 28:53 - 30:00
Things you may want to cover:

What resources helped in errors: 
https://www.appsloveworld.com/ruby/100/32/getting-actioncontrollerroutingerror-no-route-matches-options-users-when
... 

Adding this to routes.rb
  resources :users do
    collection { post :create_user , via: :options  }
    # via: :options ?
  end

   Remove the param plural. Params (no) param (yes) in routes.rb
    resources :airlines, param: :slug
...

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
