# CRUD React & Rails App

URL TO TUTORIAL: https://www.youtube.com/watch?v=oyjzi837wME&list=PLvRl6k5LXGmn9DCz_9FiBwXI63fsGY3Ph&index=28&t=134s
TITLE: Let's build a CRUD app with Ruby on Rails and React.js 
What resources helped in errors: 
https://www.appsloveworld.com/ruby/100/32/getting-actioncontrollerroutingerror-no-route-matches-options-users-when

Next:
- Import BrowserRouter and react-router-dom functionalities

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

```
webpack binstubs not found.
Have you run rails webpacker:install ?
Make sure the bin directory or binstubs are not included in .gitignore
Exiting! 
```

#### Solution: 
Instead of directly installing webpacker & react at the same time. Install once a time and run:

    rails webpacker:install 
    Result => Webpacker successfully installed 🎉 🍰
    rails webpacker:install:react Webpacker now supports react.js 🎉

### Problem:
```
ActionView::Template::Error (Webpacker can't find index.jsx in /Users/borgeringstad/Documents/projects/crudrailsreact/open-flights/public/packs/manifest.json. Possible causes:
1. You want to set webpacker.yml value of compile to true for your environment
   unless you are using the `webpack -w` or the webpack-dev-server.
2. webpack has not yet re-run to reflect updates.
3. You have misconfigured Webpacker's config/webpacker.yml file.
4. Your webpack configuration is not creating a manifest.
```
#### Solution:  
In views/application.html.erb

Remove the '.js' ending

``` 
 <%= javascript_pack_tag 'index.js' %>
```

to 

``` 
 <%= javascript_pack_tag 'index' %>
```



``` <%= javascript_pack_tag 'index' %>


* Ruby version 3.0.0
* Rails version 7.0.4
* System dependencies
  * 'fast_jsonapi' gem (no longer maintained) [fast_jsonapi](https://github.com/Netflix/fast_jsonapi)
* Configuration
* Database creation
  * Airlines Active Record
  * Reviews Active Record