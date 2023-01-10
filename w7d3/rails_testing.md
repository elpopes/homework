## Why Test Our Code?

1. Make sure our code works
2. Increase flexibility and reduce fear when refactoring
3. Makes collaboration easier
4. Produce documentation

## Testing Pyramid

- Unit Tests
  - each inividual unit works
- Integration Tests
  - part of your application work together
- End-to-End Tests
  - bigger scale, UI experience

## Rails Testing

- What are the components we typically create in Rails
  - Models, Controllers, and Views (features)
- Rails components match up nicely with the pyramid
  - views represent the end to end tests

#

# SETTING UP RSPEC WITH RUBY ON RAILS

## Adding the RSPEC gem:

```
# my_app/Gemfile
group :development, :test do
    gem 'rspec-rails'
end
```

## The Test Database

Open up **config/database.yml**:

```
# my_app/config/database.yml

# PostgreSQL. Versions 9.3 and up are supported.
# ...
# Configure Using Gemfile
# gem "pg"
#
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # https://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>

development:
  <<: *default
  database: goal_app_long_practice_development

  # ...
# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: goal_app_long_practice_test

# ...
# Read https://guides.rubyonrails.org/configuring.html#configuring-a-database
# for a full overview on how database connection configuration can be specified.
#
production:
  <<: *default
  database: goal_app_long_practice_production
  username: goal_app_long_practice
  password: <%= ENV["GOAL_APP_LONG_PRACTICE_DATABASE_PASSWORD"] %>
```

Notice there are three sets of configuration data: one for `development`, one for `test`, and one for `production`. When you run a server on localhost, Rails uses the `development` database. For running tests, it will use a separate `test` database. The default configuration will work just fine for testing with RSpec.

Run rails `db:create` on the command line to create your development and test databases.

## Configure RSpec

Next, install RSpec by running the following from the command line:

```
rails g rspec:install
```

Add this to the .rspec configuration file:

```
--require spec_helper
--color
--format documentation
```

## Resources:

- [RSpec homepage](https://rspec.info/)
- [rspec-rails overview](https://rspec.info/documentation/5.0/rspec-rails/)
- [rspec-rails documentation](https://relishapp.com/rspec/rspec-rails/v/5-1/docs)
