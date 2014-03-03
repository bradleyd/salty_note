# SaltyNote

A simple note and task taking command line application

### What makes salty_note awesome
* easy and intuitive arguments
* stores data on cloud storage (Dropbox, box, google drive, etc..)
## Installation

Add this line to your application's Gemfile:

    gem 'salty_note'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install salty_note

## Usage

### Notes

#### Create a new note

```ruby
salty_note note add "this is a sample note"
```

#### List all notes

```ruby
salty_note note all
```
#### Delete a note

```ruby
salty_note note delete 3
```

#### Search notes

```ruby
salty_note note search foobar
```

### Tasks

#### Create a new task

```ruby
salty_note task new "this is a sample task"
```
#### List all tasks

```ruby
salty_note task all
```

#### Delete a task

```ruby
salty_note task delete 3
```

#### Mark task as complete

```ruby
salty_note task done 3
```
#### Search tasks

```ruby
salty_note task search foobar
```


## Contributing

### TODO

* returns all data when creating a note


1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
