# Why?

A place to save notes for weekly pair programming sessions at [Fracture Atlas](http://www.fracturedatlas.org/). 

# Table of Contents
* [CLI](https://github.com/iacutone/ruby-talk#cli)
* [Ruby](https://github.com/iacutone/ruby-talk#ruby)
* [Rails](https://github.com/iacutone/ruby-talk#rails)
* [Testing](https://github.com/iacutone/ruby-talk#testing)
* [GitHub](https://github.com/iacutone/ruby-talk#github)
* [Sublime](https://github.com/iacutone/ruby-talk#sublime)


# CLI
### Helpful Commands
Push spacebar in order to go to the next page of text in bash.

Markdown file to HTML file
```bash
pandoc -o output.html input.md
```

# Ruby

### Objects in Memory
```ruby
# test.rb

a = "I am a cow."

def wow(str)
  str.insert(-1, '*WOW*')
end

b = wow(a)

puts "A: #{a.object_id}"
puts "B: #{b.object_id}"
a.object_id == b.object_id
```

```bash
ruby test.rb
A: 70177366710780
B: 70177366710780
true
```

# Rails
### Destroy vs. Delete
```ruby
Object.destroy_all
# => Fires all callbacks and dependencies
Object.delete_all
# => Only deletes current table, orhpans dependencies
```

# Testing
### Delayed Job
If delayed job is making tests fail, put the perform method into a before block:
```ruby
context "events" do
  before do
    latlong_array = venue.geocode
    venue.update_attributes(lat: latlong_array.first, long: latlong_array.last)
  end
end
```

# GitHub
### Helpful Commands
```bash
git help diff

Comparing branches

     $ git diff topic master    (1)
     $ git diff topic..master   (2)
     $ git diff topic...master  (3)

 1. Changes between the tips of the topic and the master branches.
 2. Same as above.
 3. Changes that occurred on the master branch since when the topic branch was started off it.
```

A good way to merge remote master onto a local branch
```bash
git checkout master
git fetch
git pull --rebase
git checkout <branch>
git rebase master
```


# Sublime
control + shift + k
	
- kill a line

command + t + "File directory/" 
	
- to hone in on a specific file under a directory