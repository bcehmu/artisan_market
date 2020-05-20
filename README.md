# [Artisan Market](https://shrouded-wave-42515.herokuapp.com/)


## Purpose

Luthiers try to provide high quality and customizable instruments.
Musicians are good at making media promoting instruments.
This project is to explore a way to bridge between custom guitar/bass luthier and musician.
- The market of custom instrument luthier and musician is not a large one.
Usually mass-production products sacrify some degree of quality to efficiency and targeted consumers' population, but custom instrument market is usually not considered of this type.
- In this market, a deal means a long process of communication, takes months or even years to finish.
- Important factors include building reputation and proper communication. 

## Problems to be solved

In the age of internet, messaging is fast and cheap, but building healthy industrial ecology could be misled by fast expansion.
- For a relative small market as custom instrument, participants need to be responsible for their communication as well as their works. Meticulous invitation for new user to be granted role of market player is a good way of healthy expansion.
- Subscribing functionality is good for subscriber's efficiency and player's potential campaigns.
- Basic functionality are needed: editing profile, editing products' info for luthiers and editing media info for musicians, browse and search for all users. 

## Target audience

- For luthiers who would like to show their products and communicate with other luthiers and musicians, as well as looking for potential musical promotion with musicians.
- For musicians who would like to show their media and communicate with other musicians and luthiers, searching for potential custom guitar/bass to order, as well as opportunity to profit from promoting luthier's products.
- For others who would like to know more about luthiers' or musicians' work.

## Features

Three types of roles, user (not luthier or musician), luthier and musician, exclusively.
Each with specific accessibility: 
- Every role could browse and search, editing profile.
- User could apply for role as luthier or musician, by invitation from other luthier or musician, through entering invitation code.
- Luthier and musican are nearly symmetric, they could edit their own products/media, add or delete non-occupied invitation code.
- Partials (some part of layout and components) such as buttons and menus are designed for current role as well.

## Tech stack

- Ruby on Rails, Postgresql as database
- [devise + cancancan + rolify]([https://](https://github.com/RolifyCommunity/rolify/wiki/Devise---CanCanCan---rolify-Tutorial)) for authentication and authorization
- [pg_search](https://github.com/Casecommons/pg_search) for filter/search functionality
- [Bootstrap](https://getbootstrap.com/) for front-end styling
- [AWS S3](https://aws.amazon.com/) for media storage
- [Heroku](https://www.heroku.com/) for deployment

## Features

## Sitemap

## Third-party services

### User authentication with [devise](https://github.com/heartcombo/devise)
devise is used for user authentication.
- devise provide powerful and efficient way to add authentication to app.
This project depends on devise for user resgistration/login/password functions,
with only minor customizing style of generated views of devise.
The most critical method deciding current role for authorization is heavy use of devise helper:
```ruby
current_user
```
Authentication with helper:
```ruby
before_action :authenticate_user! 
```

- To add specific data-accessing controller, rolify and cancancan could be utilized by resourcify specific models, adding 
```ruby
resourcify
```
in model class.
rolify and cancancan don't automatically create data-accessing controller, but provide helpers for easier managing customized logic of data-acessing.

### Search/Filter with [pg_search](https://github.com/Casecommons/pg_search)

pg_search is a tool taking advantages of PostgreSQL's search for ruby.
- This project use pg_search's pg_search_scope method to search against products' and media's content, with ability to negate-search using :tsearch, which is a Full text search built-in to PostgreSQL.
To search in specific model's data, for example adding
```ruby
  include PgSearch::Model
  pg_search_scope :search_medium, against: [:name, :description], using: {
    tsearch: {negation: true}
  }
```
in Medium's model class, enabling search against medium's name and description.
A method :search_medium is created and ready to be used in Medium's controller
```ruby
      @filter = params["search"]
      @media = Medium.all.search_medium("#{@filter}")
```
Here @media is filtered by search_medium method.

### Easy styling with bootstrap
After several lines of initial configuration, bootstrap's styling tool could be easily used by adding predefined class name to html element for styling.
- This project didn't touch heavily about styling, most heavy use of bootstrap is grid for layout. For example
```html
<div class="container">
    <div class="row justify-content-between">
        <div class="col">
        </div>
        <div class="col">
        </div>
    </div>
</div>
```
Bootstrap's class "container" and "row" "col" arrange layout like a grid and automatically align with option such as "justify-content-between" "justify-content-around".
- Currently image was sized by bootstrap class "img-thumbnail" and "img-fluid" .
- Navbars with drop-down menu are created using bootstrap as well. To function well, properly nested structure guidedy by official document is necessary.


## Configuration notes:

### Use deivise + cancancan + rolify

After adding devise, cancancan, rolify in Gemfile,
```bash
rails g devise:install
rails db:migrate
```
(Edit relative files hinted by devise:install's output)
```bash
rails g devise User
rails g cancan:ability

rails db:migrate
```


```bash
rails g rolify Role User
```
But at this point if run migration directly, there might be an error about migration, with [solution from rolify community](https://github.com/RolifyCommunity/rolify/issues/444)
Following the article, edit version info in migration file of rolify Roles to [5.0].

```bash
yarn add rails-ujs
```

### Heroku deployment
- Use rails credentials to save protected info.
Rails credentails could be checked in rails console by using
```bash
Rails.application.credentials
```
For linux users, editor of credentials file could be achieved by
```bash
EDITOR=nano rails credentials:edit
```
For windows users, editor could be set by
```bash
set EDITOR="notepad"
```
Editing by
```
rails credentials:edit
```
The recognizable format of credentials is **strict**, improper spaces or tab could **not** be interpretted.

- Use "heroku run" command helper to excute on server
As guided by heroku, following commands are necessary for successful deployment after login/create/push and editing credential:
```bash
heroku run rails db:reset
heroku run rails db:setup
heroku run rails db:migration
heroku run rails db:seed
```

## References
- [The deployed site at Heroku](https://shrouded-wave-42515.herokuapp.com/)
- [ERD](https://app.lucidchart.com/invitations/accept/a5f8eeda-5c7e-4930-9a24-e9fbbd283dea)
- [GitHub Repository](https://github.com/bcehmu/artisan_market)




