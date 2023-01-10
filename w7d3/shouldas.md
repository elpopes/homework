#Shoulda Matchers Setup

To set up Shoulda Matchers, first include the shoulda-matchers gem in your Gemfile under group :test and bundle install:

```
group :test do
  gem 'shoulda-matchers'
end
```

Next, you will need to specify some configuration options at the bottom of the **rails_helper.rb** file. You want to configure Shoulda Matchers to use RSpec as the testing framework and to use the Rails library (Active Record, Active Model, and Action Controller):

```
# spec/rails_helper.rb
require 'shoulda-matchers'

# ...

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
```

(Don't forget to include require 'shoulda-matchers' at the top of your rails_helper.rb file!)

[Check out the Shoulda Matchers docs (GitHub) for more deets](https://matchers.shoulda.io/docs/v5.1.0/)
