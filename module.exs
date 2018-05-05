# Modules and Functions

defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end 

  # private method
  defp do_sum(a, b) do
   a + b 
  end

  def zero?(0) do
   true
  end
    
   
  def zero?(x) when is_integer(x) do
   false 
  end

end

IO.puts Math.sum(1, 2)
# IO.puts Math.do_sum(1, 2) # UndefinedFunctionError

# functions capturing
fun = &Math.zero?/1
fun.(0) # true

fun = &List.flatten(&1, &2)
fun.([1, [[2], 3]], [4, 5])
# capture syntax creating functions
fun = &(&1 + 1) # &1 first argument
fun.(1) # 2

# default arguments
defmodule Concat do
  def join(a, b, sep \\ " ") do
    a <> sep <> b
  end
end

IO.puts Concat.join("hello", "world") # hello world
IO.puts Concat.join("hello", "world", "_") # hello_world
