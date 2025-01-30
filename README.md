# Trestle TurboScopes (trestle-turbo_scopes)

> Asynchronous scope loading plugin for the Trestle admin framework


## Getting Started

These instructions assume you have a working Trestle application. To integrate trestle-turbo_scopes, first add it to your application's Gemfile:

```ruby
gem 'trestle-turbo_scopes'
```

Run `bundle install`, and then restart your Rails server.

To enable turbo_scopes capabilities within an admin resource, define a `turbo_scopes` block:

```ruby
Trestle.resource(:articles) do
  scopes do
    scope :all, default: true, label: t('activerecord.attributes.article.all')

    Article.categories.each do |category|
      scope action, label: t(category, scope: 'activerecord.attributes.article')
    end
  end
end
```

## License

The gem is available as open source under the terms of the [LGPLv3 License](https://opensource.org/licenses/LGPL-3.0).
