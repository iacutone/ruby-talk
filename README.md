
Notes for our weekly Ruby on Rails development talks at [Fracture Atlas](http://www.fracturedatlas.org/). 

# Table of Contents
===
* [Ideas](http://)
* [Ruby](http://)
* [Concentration](http://)


#[Ideas](http://)
===


#[Ruby](http://)
===
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

#[Concentration](http://)
===