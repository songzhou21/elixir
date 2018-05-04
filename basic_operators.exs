# string concatenation
IO.puts "foo" <> "bar"

IO.puts "======="
IO.puts "boolean"
IO.puts "======="
# use and, or and not when you are expecting booleans. 
#If any of the arguments are non-boolean, use &&, || and !.

true and true
# 1 and true # BadBooleanError
1 && true
IO.puts false || 11

IO.puts "======="
IO.puts "compare"
IO.puts "======="
IO.puts 1 == 1.0
IO.puts 1 === 1.0