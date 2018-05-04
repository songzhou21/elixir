case {1, 2, 3} do
    {4, 5, 6} ->
        "This clause wont match"
    {1, x, 3} ->
        IO.puts "This clause will match and bind x to 2 in this clause"
    _ ->
        "This clause would match any value"
end

case {1, 2, 3} do
    {1, x, 3} when x > 0 ->
        IO.puts "Will match"
    _ ->
        "would match, if guard condition were not satisfied"
end

# hd(1) #ArgumentError
case 1 do
    x when hd(x) -> "Won't match"
    x -> IO.puts "Got #{x}"
end

IO.puts "===================="
IO.puts "annoymous functions:"
IO.puts "===================="
# The number of arguments in each anonymous function clause needs to be the same,
f = fn
    x, y when x > 0 -> x + y
    x, y -> x * y
end
IO.puts f.(1,3)
IO.puts f.(-1,3)

IO.puts "===="
IO.puts "cond"
IO.puts "===="
# check different conditions and find the first one that evaluates to true
# cond considers any value besides `nil` and `false` to be true:
cond do
    2 + 2 == 5 ->
        "his will not be true"
    2 * 2 == 3 ->
        "nor this"
    1 + 1 == 2 ->
        "bus this well"
    true ->
        "This is always true"
end

IO.puts "=="
IO.puts "if"
IO.puts "=="

if true do
    "This works"
else
    "nope"
end

unless true do
    "This will never be seen"
end

IO.puts "============"
IO.puts "do/end block"
IO.puts "============"

if true do
    :this
else
    :that
end
# are syntactic convenience of 
if true, do: :this, else: :that

# bind block to `if`

# is_number if true do
#     1+2
# end
#
# would be parsed as
#
# is_number(if true) do
#     1+2
# end
#
# (CompileError) undefined function: is_number/2

is_number(if true do 
    1+2
end)