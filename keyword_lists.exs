# Keyword lists and maps

# ============
# keyword list
# ============
# a list of tuples and the first item of the tuple (i.e. the key) is an atom,
# we call it a keyword list:
list = [{:a, 1}, {:b, 2}] # [a: 1, b: 2]
list == [a: 1, b: 2] # true

# passing options to functions
if(false, [{do: :this}, {else: :that}])

if(false, [do: :this, else: :that])

# In general, when the keyword list is the last argument of a function, 
# the square brackets are optional.
if false, do: :this, else: :that

# syntactic convenience
if false do
    :this
else
    :that
end

# match
# pattern matching on lists requires the number of items and their order to match:
[a: a] = [a: 1] # a = 1
[a: a] = [a: 1, b: 2] #MatchError
[b: b, a: a] = [a: 1, b: 2] #MatchError

# ====
# Maps
# ====
map = %{:a => 1, 2 => :b}
map[:a] #1
map[2] #:b
map[:c] #nil

# convenience when keys are atoms
map = %{a: 1, b: 2}
map.a #1

#match
%{} = %{:a => 1, 2 => :b} #%{:a => 1, 2 => :b}
%{:a => a} = %{:a => 1, 2 => :b} #%{:a => 1, 2 => :b} a=1
# %{:c => c} = %{:a => 1, 2 => :b} # MatchError

# manipulate
map = %{:a => 1, 2 => :b}
Map.get(map, :a) #1
Map.put(map, :c, 3) #%{2 => :b, :a => 1, :c => 3}
Map.to_list(%{:a => 1, 2 => :b}) #[{:a, 1}, {2, :b}]
# update, can not add
%{map | 2 => "two"} #%{2 => "two", :a => 1}