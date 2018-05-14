# api_parser
just a json-api compliant server

## Installation

### Requirements
- ruby
- bundler

First you need to clone the repository, you can do this by:

```
git clone https://github.com/ccarruitero/api_parser.git
```

Then install gems

```
bundle install
```

Setup your database.

We are using `postgresql`, and setting our database credentials in an `.env`
file. But you can customize the database or how to load credentials to use
changing the `config/database.yml` and adding desired gems to `Gemfile` if
necessary.

In order to create the database you can run: (if you have already created the
database you can omit)
```
rake db:create
```

Then run the migrations
```
rake db:migrate
```

Finally, start the development server:
```
./bin/rails s
```

## Tests

You can run the tests by:

```
rake test
```

And for the code lint:
```
rubocop
```
