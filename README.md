# RailsRestart

Gem for restart rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_restart'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_restart

## Usage

```ruby
Rails::restart

# or with parameters

Rails::restart('-e production &')
```