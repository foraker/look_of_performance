# LookOfPerformance

This gem will print out a look of disapproval when your action takes too long to process.

It's primarily an experiment into using `ActiveSupport::LogSubscriber`.

It's Rails-specific as it hooks into `ActionController`.

If you would find having `ಠ_ಠ`s thrown at you motivating, then this gem's for you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'look_of_performance'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install look_of_performance

## Usage

Add `require 'look_of_performance'` to your `ApplicationController` to get logging added to every action. Alternatively, you can just require it in specific controllers where you need motivation to improve the performance.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/look_of_performance/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## About Foraker Labs

<img src="http://assets.foraker.com/foraker_logo.png" width="400" height="62">

This project is maintained by Foraker Labs. The names and logos of Foraker Labs are fully owned and copyright Foraker Design, LLC.

Foraker Labs is a Boulder-based Ruby on Rails and iOS development shop. Please reach out if we can [help build your product](http://www.foraker.com).
