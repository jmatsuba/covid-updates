# www.covid-updates.ca
A super simple rails app designed to make accessing the latest public health breifing easy and to curate fact based resources to inform people on COVID-19.

## Getting Started

1. Clone the project
2. `bundle`
3. `yarn install`
4. Review the database.yml to ensure it will work in your local dev env
5. `rails s` to start your rails server


Right now it is a statically driven site based on home.html.erb and resources.html.erb

Please use feature branches and PRs for development. 

## Production Details  
- Heroku (for now)
- `master` branch is live deployed


## HELP WANTED
Right now there is the need for the following:  
- Maintaining content. Super simple little / no tech skills needed. Just pick a province and stay on top of the videos the provincial health authorities release. Write up a small summary. Ideally, write up a PR for update.
- Right now the site is static, but is on a rails app. Building out the data model to manage the videos, and a CRUD with approval workflow. 
- Promotion. Keep sharing the site as much as possible on places like reddit, but also looking at other places people will see it.
- Social media (so promotion pt 2) - create all the social accounts for it and maintain it.
- Build a email subscription system, so people can subscribe to the update of their choice.

When time permits will make this list GH issues.
