# rubocop-decko
Code style checking for [Wagn/Decko](https://github.com/wagn/wagn) files
# RuboCop Decko

[![Gem Version](https://badge.fury.io/rb/rubocop-decko.svg)](http://badge.fury.io/rb/rubocop-decko)

Wagn-specific analysis for your Wagn deck, as an extension to
[RuboCop](https://github.com/bbatsov/rubocop). Heavily inspired by [`rubocop-rspec`](https://github.com/nevir/rubocop-rspec) and [`rubocop-cask`](https://github.com/nevir/rubocop-rspec).


## Installation

Just install the `rubocop-decko` gem

```bash
gem install rubocop-decko
```

or if you use bundler put this in your `Gemfile`

```
gem 'rubocop-decko'
```


## Usage

You need to tell RuboCop to load the Decko extension. There are three ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`:

```
require: rubocop-decko
```

Now you can run `rubocop` and it will automatically load the RuboCop Decko cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-decko
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-decko'
end
```


## The Cops

All cops are located under [`lib/rubocop/cop/decko`](lib/rubocop/cop/decko), and contain examples/documentation.

In your `.rubocop.yml`, you may treat the Decko cops just like any other cop. For example:

```yaml
Decko/ViewLength:
  Description: Avoid views longer than 15 lines of code.
  Enabled: true
  CountComments: false
  Max: 15
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

`rubocop-cask` is MIT licensed. [See the accompanying file](MIT-LICENSE.md) for
the full text.

