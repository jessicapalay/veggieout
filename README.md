# Veggieout 

A really cool way to track how good you've been

## Setup

To get started, clone this repo and run the following from your terminal:

```
$ bundle
$ rake db:create
$ rake db:migrate
```

## User Stories

- [ ] As a user, I should be able to sign up
- [ ] As a user, I should be able to create a profile
- [ ] As a user, I should be able to record how many vegetables I've eaten that day
- [ ] As a user, I should be able to record how many fruits I've eaten that day
- [ ] As a user, I should be able to record how much and what kind of activity I've done that day
- [ ] As a user, I should be able to record how much relaxation I've done that day
- [ ] As a user, I should be able to record how much I've slept the night before
- [ ] As a user, I should be able to see a graph on these behaviors over the last week, month, year
- [ ] As a user, I should be able to 'follow' other users
- [ ] As a user, I should be able to share and see the statistics of my 'friends'

## Sitemap

```
/users/:id
/users
/users/sign_up
/users/sign_in
/users/:id/edit
/
```

## Models

```
User
  name
  email
  password
  password_confirmation
  
Vegetable
  count / how_many_i_ate / servings
  kind

Fruit
  count / how_many_i_ate / servings
  kind
  
Activity
  count / number_of_minutes
  kind
  calories burned
  
Relaxation
  count / number_of_minutes
  kind
  
Sleep
  count / number_of_hours_and_minutes
  
Follow
  follower_id
  followee_id
  
Comment
  body <string>
  favorited <boolean>
```
## Setup
Copy the "config/application.example.yml" file and remove "example". Your application.yml should contain your sensitive credentials. It should be included in .gitnore as well.  
