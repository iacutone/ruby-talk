a = "I am a cow."

  def wow(str)
    str.insert(-1, '*WOW*')
  end
  
  b = wow( a )
  
  puts "A: #{a.object_id}"
  puts "B: #{b.object_id}"
  puts a.object_id == b.object_id