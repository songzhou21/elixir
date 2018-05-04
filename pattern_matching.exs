{a,b,c} = {:hello, "world", 42}
IO.puts "#{a}, #{b}, #{c}"

# match on specific values
{:ok, result} = {:ok, 13}
IO.puts result
#{:ok, result} = {:error, :oops} # MatchError

# match to list
[a, b, c] = [1, 2, 3]
IO.puts "#{a}, #{b}, #{c}"

[head | tail] = [1, 2, 3]
IO.puts head

# prepend items
list = [1, 2, 3]
[0 | list] # [0, 1, 2, 3]

IO.puts "the pin operator"
# match against an existing variable’s value 
x = 1
{y, ^x} = {2, 1}
IO.puts y
IO.puts x

# If a variable is mentioned more than once in a pattern, 
# all references should bind to the same pattern:
{x, x} = {1, 1}
# {x, x} = {1, 2} # MatchError

# match header only
[h | _] = [1, 2, 3]
IO.puts h
