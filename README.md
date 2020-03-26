# www.covid-updates.ca
A super simple rails app designed to make accessing the latest public health breifing easy and to curate fact based resources to inform people on COVID-19.

## Getting Started

1. Clone the project
2. `bundle`
3. `yarn install`
4. Review the database.yml to ensure it will work in your local dev env
5. `rails db:setup` should create and seed the db
6. `rails s` to start your rails server
7. `bundle exec rspec` to run the specs

## Checkout the admin area after install 
http://localhost:3000/users/sign_in

(see seeds for a login)

## Developer Best Practices
- Please run the spec suite and ensure a green run before you open a PR.
- Please use feature branches and PRs for development.

## Production Details
- Heroku (for now)
- `master` branch is auto deployed

## HELP WANTED
See GH Project "Development"  
Please make sure you assign yourself and move the issue to 'in progress'.
