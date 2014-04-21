
Notes for our weekly Ruby on Rails development talks at [Fracture Atlas](http://www.fracturedatlas.org/). 

# Table of Contents
===
* [Ideas](https://github.com/iacutone/ruby-talk#ideas)
* [Ruby](https://github.com/iacutone/ruby-talk#ruby)
* [Concentration](https://github.com/iacutone/ruby-talk#concentration)


# [Ideas](https://github.com/iacutone/ruby-talk#ideas)

# [Ruby](https://github.com/iacutone/ruby-talk#ruby)

Objects
```ruby
a = "I am a cow."
  def wow(str)
    str.insert(-1, '*WOW*')
  end
  b = wow( a )
  puts "A: #{a.object_id}"
  puts "B: #{b.object_id}"
```
A: 70363942068800

B: 70363942068800

# [Concentration](https://github.com/iacutone/ruby-talk#concentration)