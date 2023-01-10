## create the project

## add these gems:

```
group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
```

## add matchers and capybera gems to gemfile below `byebug`

```
  gem "rspec-rails"
  gem "shoulda-matchers"
```

## create model

```
rails g rspec:model User
```

double check but it looks like you'll need to add `capybara` and `shoulda-match` to the new rails_helper.rb

```
## Add additional requires below this line. Rails is not loaded until this point!

require 'shoulda-matchers'
require 'capybara/rspec'
```

as well as the following code at the bottom of the page:

```
Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      with.test_framework :rspec
      with.library :rails
    end
end
```

Run `bundle exec rspec spec/models` to check the specs.

## Request Tests

run `rails g rspec:request Users` to generate a spec file for `UsersControllers`.

check the tests with `bundle exec rspec spec/models`

## System Tests

Run `rails g rspec:system Auth` to create **spec/system/auths_spec.rb**
