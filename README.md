# Why?

A place to save notes for weekly pair programming sessions at [Fracture Atlas](http://www.fracturedatlas.org/). 

# Table of Contents
* [CLI](https://github.com/iacutone/ruby-talk#cli)
* [Ruby](https://github.com/iacutone/ruby-talk#ruby)
* [JavaScript](https://github.com/iacutone/ruby-talk#javascript)
* [Rails](https://github.com/iacutone/ruby-talk#rails)
* [Testing](https://github.com/iacutone/ruby-talk#testing)
* [CSS](https://github.com/iacutone/ruby-talk#css)
* [GitHub](https://github.com/iacutone/ruby-talk#github)
* [Sublime](https://github.com/iacutone/ruby-talk#sublime)

# CLI
### Helpful Commands
Push spacebar in order to go to the next page of text in bash.

Markdown file to HTML file
```bash
pandoc -o output.html input.md
```
Start using ack instead of grep.
```bash
ack
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

Use attr_reader instead of instance variable.
```ruby
class TestClass
  
  attr_reader :name
  
  def initialize(options = {})
    @name = options[:name]
  end
  
  def say_hi
    puts "Hello, " + name
  end
end
```
Using the attr_reader method "name" leads to cleaner code.

```bash
name = TestClass.new(:name => "Eric")
name.say_hi
=> "Hello, Eric"
```

### Hash
```ruby
# test.rb

array = ['one', 'two', 'three', 'three']
hash = {}
array.each do |object|
  hash[object] = 0
  puts hash
end
```

```bash
ruby test.rb
{"one"=>0, "two"=>0, "three"=>0}
```
A hash needs a unique key, therefore multiple objects with the same value will be removed (in this case, the extra string three).

### Logical (and or XOR)
```bash
x = [1, 2]
y = [2, 3]
x & y => [2]
x | y => [1, 2, 3]

0 ^ 0 => 0
0 ^ 1 => 1
1 ^ 0 => 1
1 ^ 1 => 0
```

Output is true whenever the input differs.

# JavaScript
[Performance Testing](https://github.com/iacutone/js-perf)


# Rails
## Active Record
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

When your tests fail in RSpec, the bottom of the log displays a command in order to run a single test:
```bash
 rspec ./spec/features/model/sign_in_spec.rb:66
 ```

# CSS
### Nested DOM Trees
```css
div h1 {
  background: red;
}
```
Selects all h1 tags nested inside of a div tag.

```css
div > h1 {
  background: red;
}
```
Selects immediate children of specified element.

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


```bash
git rebase --onto <branch_name> <commit>..<commit>
```
Here is how you would transplant a topic branch based on one branch to another, to pretend that you forked the topic branch from the latter branch, using rebase
       --onto.

       First let's assume your topic is based on branch next. For example, a feature developed in topic depends on some functionality which is found in next.

               o---o---o---o---o  master
                    \
                     o---o---o---o---o  next
                                      \
                                       o---o---o  topic


       We want to make topic forked from branch master; for example, because the functionality on which topic depends was merged into the more stable master branch. We want
       our tree to look like this:

               o---o---o---o---o  master
                   |            \
                   |             o'--o'--o'  topic
                    \
                     o---o---o---o---o  next


       We can get this using the following command:

           git rebase --onto master next topic

A good way to merge remote master onto a local branch
```bash
git checkout master
git fetch
git pull --rebase
git checkout <branch>
git rebase master
```

Force changes to a remote git repository.
```bash
git push origin <branch> -f
```
-f, --force
           Usually, the command refuses to update a remote ref that is not an ancestor of the local ref used to overwrite it. This flag disables the check. This can cause
           the remote repository to lose commits; use it with care.

```bash
git merge <branch> --no-ff
```           
--ff
           When the merge resolves as a fast-forward, only update the branch pointer, without creating a merge commit. This is the default behavior.

       --no-ff
           Create a merge commit even when the merge resolves as a fast-forward.

# Sublime
control + shift + k
	
- kill a line

command + t + "File directory/" 
	
- to hone in on a specific file under a directory