IO.puts 1
IO.puts 0x1F
IO.puts 1.0
IO.puts 1.0e-10
IO.puts true
IO.puts :atom
IO.puts "string"

IO.puts "list"
[1, 2, 3]

IO.puts "tuple"
{1, 2, 3}

IO.puts "================="
IO.puts "Basic arithmetic"
IO.puts "================="
# return float
IO.puts 10 / 2
# return integer 
IO.puts div(10, 2)
IO.puts div 10, 2
IO.puts rem 10, 3
IO.puts "shortcut:"
IO.puts 0b1010
IO.puts 0o777
IO.puts 0x1F
IO.puts "round:"
IO.puts round 3.58
IO.puts trunc 3.58

true
false

IO.puts "================="
IO.puts "Atoms"
IO.puts "================="
# atoms
# An atom is a constant whose name is its own value
:hello
:true
:false
IO.puts is_atom(true)
IO.puts is_atom(:true)

IO.puts "================="
IO.puts "Strings"
IO.puts "================="
# encoded in UTF-8
song = "松"

IO.puts song
IO.puts byte_size(song)
IO.puts String.length(song)

IO.puts "\nsong#{song}"
IO.puts byte_size("song")
IO.puts String.length("song")

IO.puts "================="
IO.puts " Anonymous Functions"
IO.puts "================="

add = fn a, b -> 
  a + b 
end

IO.puts is_function add
# check if add is a function that expects excatly 2 arguments
IO.puts is_function add, 2
# check if add is a function that expects excatly 1 arguments
IO.puts is_function add, 1
# put `.` to invoke anonymous function
IO.puts add.(1, 2)
