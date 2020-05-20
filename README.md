# [Artisan Market](https://shrouded-wave-42515.herokuapp.com/)


## Inspiration

Luthiers try to provide high quality and customizable instruments.
Musicians are good at making media promoting instruments.
This project is to explore a way to bridge between custom guitar/bass luthier and musician.

## Problems to be solved

For both, a custom instrument or a custome promotion could be either a wonderful or frustrating experience, major problems include:
- Healthy communication. Consideration should be put into others' time without pushing too much.
- Some lack compreshension and in-depth knowledge of custom instrument/media, which could be improved by healthy communication as a enjoyable process, but bad attitude/behavior should be discouraged.
- There is a small but existing chance that an order taker run away with orderers' money.

## Target audience

- For luthiers who would like to show their products and communicate with other luthiers and musicians, as well as looking for potential musical promotion with musicians.
- For musicians who would like to show their media and communicate with other musicians and luthiers, searching for potential custom guitar/bass to order, as well as opportunity to profit from promoting luthier's products.
- For others who would like to know more about luthiers' or musicians' work.

## Tech stack

- Ruby on Rails, Postgresql as database
- [devise + cancancan + rolify]([https://](https://github.com/RolifyCommunity/rolify/wiki/Devise---CanCanCan---rolify-Tutorial)) for authentication and authorization
- [pg_search](https://github.com/Casecommons/pg_search) for filter/search functionality
- [Bootstrap](https://getbootstrap.com/) for front-end styling
- [AWS S3](https://aws.amazon.com/) for media storage
- [Heroku](https://www.heroku.com/) for deployment

## Features

## Sitemap

## Configuration:

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

## References
- [The deployed site at Heroku](https://shrouded-wave-42515.herokuapp.com/)
- [ERD](https://app.lucidchart.com/invitations/accept/a5f8eeda-5c7e-4930-9a24-e9fbbd283dea)
- [GitHub Repository](https://github.com/bcehmu/artisan_market)




