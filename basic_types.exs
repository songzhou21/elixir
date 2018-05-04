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

IO.puts " ==================="
IO.puts " Anonymous Functions"
IO.puts " ==================="

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

IO.puts "============="
IO.puts "(linked)Lists"
IO.puts "============="
IO.puts length [1, 2, true, 3]
[1, 2, 3] ++ [4, 5, 6]
[1, true, 2, false, 3, true] -- [true, false]

list = [1, 2, 3]
hd(list) # 1
tl(list) # [2, 3]

IO.puts "======="
IO.puts "Tuples"
IO.puts "======="
tuple = {:ok, "hello"}
IO.puts tuple_size tuple
IO.puts elem(tuple, 0)
IO.puts elem tuple, 1
tuple2 = put_elem tuple, 1, "world"
IO.puts elem tuple2, 1
IO.puts elem File.read("basic_types.exs.unknow"), 0
