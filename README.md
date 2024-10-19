# shark-scraper-cli

This Ruby gem provides a CLI for you to learn about 40 sharks and rays as seen on Oceana's Sharks & Rays Encyclopedia. By inputting the number corresponding to the shark or ray you wish to learn more about, you will get access to some quick facts about the animal. You will learn about its scientific name, distribution, habitat, feeding, taxonomy, and will be given a short description.

## Installation

To install the gem, run the following command:
    $ gem install shark-scraper-cli

## Usage

Type the following below and follow the on-screen prompts.

    $ shark-scraper-cli

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Troubleshooting

1. If you encounter the following error:

```ERROR: While executing gem ... (Gem::FilePermissionError) You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory.```

You can resolve this by using `sudo` to install the gem globally:

  $ sudo gem install shark-scraper-cli
  $ sudo bundle install

2. If you encounter the following error: 

```/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/lib/ruby/2.6.0/rubygems/core_ext/kernel_require.rb:54:in `require': cannot load such file -- pry```

You can resolve this by running the following command:

    $ sudo gem install pry

## Contributing

Contributions to the project are welcome on GitHub at https://github.com/luebbertkayla/shark-scraper-cli. When contributing, please follow the [Covenant Code of Conduct](https://github.com/probot/template/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Sources
This project is inspired by [Oceana's Sharks & Rays Encyclopedia](https://oceana.org/marine-life/sharks-rays).
