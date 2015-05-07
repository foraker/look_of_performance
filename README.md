# LookOfPerformance

This gem will print out a look of disapproval in your development log when your action takes too long to process.

It's primarily an experiment into using `ActiveSupport::LogSubscriber`.

It's Rails-specific as it hooks into `ActionController`.

If you would find having `ಠ_ಠ`s thrown at you motivating, then this gem's for you.

You'll get one `ಠ_ಠ` per 100 ms that your action takes to process by default.

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

## Configuration

### Options

    scolding

The string that you get once per every `limit` milliseconds.

Defaults to ಠ_ಠ

    delimiter

The string that is included between each `scolding` that your slowness has earned you.

Defaults to " "

    limit

The number of milliseconds you're trying to beat. If your action takes more than the `limit` to load, you'll get at least one `scolding` thrown at you. Every additional `limit` ms the response takes, you'll get an additional `scolding`.

Defaults to 100. Is that optimistic? Yeah, probably.

    prefix
    
A string to be prepended to the output before the scolding

    suffix
    
A string to be appended to the output after the scolding

### Overriding

You can override the default configuration by creating an initializer (e.g. `config/intitializers/look_of_performance.rb`) and setting the values yourself, like so:

```ruby
LookOfPerformance::Configuration.scolding = "bananas"
```

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
