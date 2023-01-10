# Learning Goals

1. # know what it is

## basic setup: configs

```
application.rb
config.generators do |g|
    g.test_framework :rspec,
        :fictures => false,
        :view_specs =>
        :helper_specs =>
        :routing_specs => ...
```

```
rails_helper.rb
RSpec.configure do |config|
    config.include FactoryBOt::Syntax::Methods
end

Should::Matchers.configure do |config|
...
```

2. # reinforce testing pyramid
   - make sure it works
   - prevent regressions
   - easier collaboration
   - built in docs
   ### pyramid
   - end to end tests (top)
     1-5%
   - integration tests (mid) 5-15%
   - unit tests (bottom)
     80-90%
     ### know what things do
   ### TDD
   1. red
   2. green
   3. refactor
3. # understand how to test rails models

   ### what are the components we typically create in rails?

   - models
   - controllers
   - views (features)

```
group :developmemngtg, :test do
gem 'rspec-rails'
gem 'rails controller testing'
gem 'capybara'
gem 'shoulds-matchers'
gem 'factory_bot_rails'
gem 'faker'
gem 'launchy'
gem 'guard-rspec'
```

`rails db:create`
`rails db:test:load`
`rails g rspec:install`

- creates file tree and helper files
- auto-generate test files
  change the `config/application.rb` file

  ### Unit Testing

  - small in scope
    - tests only touch model code
    - tests can touch the database

validations

```
it { should validate_presence_of(:username)}
it {should validate_presence_of(:password_digest)}

```

associations

```
it { should have_many(:chirps) }
it { should belongs_to(:user)}
```

## Integration Testing: Controllers

- Scope:
  \*controller, routes...

## Rails Controller Testing API

- Request Methods
  - get
  - post
  - patch
  - delete
- Assertions
  - render_template
  - redirect_to
  - have_http...

## Request Syntax

(http request) :(controller action), (params)

```
get :new
post :creat, params: { user: { username: "harry potter"}}
```

# Demo 3 recorded! sike, not recorded.

## End-to-end testing: Features

## Capybara API

- Navigation
  - visit
  - click_on
- Forms
  - fill_in "field", with: "value"
  - choose, check, uncheck
  - select...
- Assertions
  - have_content
  - current_path
  - page
- Debugging
  - save_and_open_page
  - ...

4. # understand how to test rails controllers
5. # becore fam with caybara testing library
6. # Be able to read specs on rails 2
