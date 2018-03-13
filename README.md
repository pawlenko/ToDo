# About

Example implementation of ToDo application in Ruby on Rails. 


##### Features

* SingUp and LogIn
* Create your own team
* User can belong to many teams
* Invite other person to your team
* Add, remove and finish tasks in your team
* Single Page Application
* Responsvie Design

##### Used gems

* Devise
* CanCan
* Rolify
* FontAwesome
* Bootstrap
* Jquery


##### Roles
* Creator ( team owner )
* User    ( user that was added to team. This role allow finish tasks)   
* Reader  ( user that was added to team. This role allow only read task list)

# Installation

```sh
bundle install
rake db:migrate
rake db:seed 
```

# Run application

```sh
rails s
```

License
----

MIT


