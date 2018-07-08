# Ruby On Rails

## Rails Router

The Rails router:
* Recognizes URLs and meethods
* Chooses controller
* Chooses the response based off of the action's of the controller. 
* Defines structure of your application's API

## Controllers
The controller helps us makes sense of the request and produce the appropriate output. Controllers are the "doers" of the MVC. 

* __ALWAYS__ named in the plural form. `ExamplesController`

``` Ruby
# app/controllers/users_controller.rb
class UsersController < ApplicationController
    def index
        render json: Users.all
    end

    def show
        render json: Users.find(params[:id])
    end
end

# config/routes.rb
Project::Application.routes.draw do 
    resources: :Users only: [:index, :show]
end
```

## Routes
`resources` creates all of the RESTful routes. 
__CRUD__ = "Create Read Update Destroy"

``` Ruby
# config/routes.rb
TestCLone::Application.routes.draw do 
    resources: :examples
end
```

## Getting Started
* `rails new project_name`
* `rails new project_name --database=postgresql` - If you want to use a different database. 

__Notes for using PostgreSQL__
* set up using `bundle exec rails db:create`


