# Pokedex Rails App (with Postgres SQL)

For this exercise, we'll create a Rails app with Postgres database. The end result we want is a CRUD app for pokemon with data saved into a database.

## Getting Started

1. Fork and clone this repository to your computer

2. To generate a new Rails application, in the project directory run:
```
rails new ./ -d postgresql
```
3. To install dependencies, run:
```
bundle install
```
4. Create a new Postgres database by running:
```
rails db:create
```
5. Generate a model for `pokemon` and specify the table attributes
```
rails g model pokemon
```
6. To create your pokemons table in your database:
```
rails db:migrate
```
7. Seed data into the newly created pokemons table by running:
```
rails db:seed
```

## Deliverables

The deliverable is an app that has CRUD functionality on pokemon.

* GET `/` should return HTML page showing all pokemons currently in database (specifically in the pokemon table within the database)
* GET `/:id` (eg. `/2`) should return HTML page showing information about pokemon with primary ID 2 (read: primary ID, not `num` property)
* GET `/new` should return HTML page showing a form to create a new pokemon - upon submit, it should send POST request to `/`
* POST `/` should create a new pokemon and insert a new entry in the pokemon table, and should redirect to the home page `/`
* GET `/:id/edit` (eg. `/2/edit`) should return HTML page showing a form pre-populated with that pokemon's data - upon submit, it should send PUT request to `/:id`
* The `/:id/edit` HTML page should also have a "Delete" button that when clicked, will send a DELETE request to `/:id` to delete the current pokemon
* PUT `/:id` should update the data of the pokemon with the specified ID, and should redirect to the pokemon detail page `/:id`
* DELETE `/:id` should delete the entry of the pokemon with the specified ID, and should redirect to the home page `/`

### HINT

Refer to the gitbook materials for relevant commands and examples: https://wdi-sg.github.io/gitbook-2018/06-ruby-rails/rails-intro/readme.html

### Bonus:
- Change your data model by adding a migration. (Look up the rails docs for running a `change table` migration.)
- Add a pokemon master who will `have many` pokemon. (This is different from a logged in user / you won't need login capability)
- You can change the seed file as well to have a seed master who has pokemon, or you can start with an empty db.
- Use nested routes to refer to the pokemons and their masters.

## Tired of Pokemon yet?
You can also build a rails app that tracks and displays parks:


#### National Parks

Beginning with the first Tree Planting Campaign in 1963, At National Parks Board (NParks) has come a long way in greening up our island city, with 4 nature reserves and more than 300 parks sprawled across Singapore to date and still growing.  

Let's create an app to showcase these wonderful parks.

#### Getting Started

*   Fork and clone this repository
*   Follow the recommended process for creating your Rails app.

#### Components

#### Models

*   A `Park` model that stores the following attributes. Choose the appropriate data types for each (`string` or `text`)
*   `name`
*   `description`
*   `picture` (for now, have this store a URL to a picture of a park)

#### Controllers

*   A controller for your home page
*   A controller for your `Park` model

#### Routes and Views

| route             | description                    | controller | action/view      |
| ----------------- | ------------------------------ | ---------- | ---------------- |
| GET /             | Your home page                 | home       | index            |
| GET /parks        | list all parks                 | parks      | index            |
| GET /parks/new    | show add park form             | parks      | new              |
| POST /parks       | create park                    | parks      | create (no view) |
| GET /parks/1      | list park (id=1)               | parks      | show             |
| GET /parks/2/edit | show edit park form (id=2)     | parks      | edit             |
| PUT /parks/3      | update an existing park (id=3) | parks      | update (no view) |
| DELETE /parks/3   | delete an existing park (id=3) | parks      | destroy (no view)|

