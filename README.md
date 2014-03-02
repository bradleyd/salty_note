# CaptainsLog

A simple note and task taking command line application

### What makes captains_log awesome
* easy and intuitive arguments
* stores data on cloud storage (Dropbox, box, google drive, etc..)
## Installation

Add this line to your application's Gemfile:

    gem 'captains_log'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install captains_log

## Usage

### Notes

#### Create a new note

```ruby
captains_log note new "this is a sample note"
```

#### List all notes

```ruby
captains_log note all
```
#### Delete a note

```ruby
captains_log note delete 3
```

#### Search notes

```ruby
captains_log note search foobar
```

### Tasks

#### Create a new task

```ruby
captains_log task new "this is a sample task"
```
#### List all tasks

```ruby
captains_log task all
```

#### Delete a task

```ruby
captains_log task delete 3
```

#### Mark task as complete

```ruby
captains_log task done 3
```
#### Search tasks

```ruby
captains_log task search foobar
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
