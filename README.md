# Nanoid

A fast implementation of NanoID in Ruby which binds to C++ code from https://github.com/mcmikecreations/nanoid_cpp

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nanoid_ext'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nanoid_native

## Usage

```ruby
Nanoid.generate #=> "pRfARBHnLKa4mcgQqJySL"
Nanoid.generate(8) #=> "V5pV5ooe"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/nanoid. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/nanoid/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nanoid project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/nanoid/blob/master/CODE_OF_CONDUCT.md).
