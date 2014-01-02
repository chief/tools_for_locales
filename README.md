# ToolsForLocales

## Description

A small collection of tools for locales wannabe project. Currently supports only
sort_tokens.

## Sort Tokens

When working with lot of tokens it's best practice to arrange the keys in
alphabetical order. That is what this task does.

Give a yaml file like this:

```ruby
  en:
    admin:
      menu:
        company: "Company"
        about_us: "About Us"
      flashes:
        success: "Success"
        failure: "Failure"
```

The result will be:

```ruby
  en:
    admin:
      flashes:
        failure: Failure
        success: Success
      menu:
        about_us: About Us
        company: Company
```

This method uses the default `to_yaml` formatting options.

## Install

```ruby
  gem 'tools_for_locales'
```

## Usage

```ruby
  rake tools_for_locales:sort_tokens
```

*WARNING*:

All locale files will be overwritten

## Tests

```ruby
  rspec spec/
```

## License

tools_for_locales is released under the [MIT License](http://opensource.org/licenses/MIT)



