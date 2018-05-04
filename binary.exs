# A string is a UTF-8 encoded binary and 
# a binary is a bitstring where the number of bits is divisible by 8

#======
# String
#======
# A string is a UTF-8 encoded binary
string = "松zhou"
IO.puts byte_size(string)
IO.puts String.length(string)

# get code point
IO.puts ?松

String.codepoints(string) #["松", "z", "h", "o", "u"]

#======
# Binary
#======
# define a binary using <<>>
IO.puts byte_size <<0, 1, 2, 4>>

# binary concatenation
<<0, 1>> <> <<2, 3>>
# concatenate the null byte <<0>> to a string to see its inner binary representation:
"hełło" <> <<0>> #<<104, 101, 197, 130, 197, 130, 111, 0>>

<<255>> # <<255>>
<<256>> # <<0>>
# use 16 bits (2 bytes) to store the number
<<256 :: size(16)>> #<<1, 0>>
<<256 :: utf8>> #"Ā"
<<256 :: utf8, 0>> #<<196, 128, 0>>

# a binary is a bitstring where the number of bits is divisible by 8.
is_binary(<<1 :: size(16)>>) #true
is_binary(<<1 :: size(14)>>) #false

# match a binary of unknown size
<<0, 1, x :: binary>> = <<0, 1, 2, 3>> # x = <<2, 3>>

# concatenation operator <> match
"he" <> rest = "hello" # rest = "llo"

#=========
# Charlists
#=========
# A charlist is nothing more than a list of code points.

'松zhou' #[26494, 122, 104, 111, 117]
to_charlist "松zhou" #[26494, 122, 104, 111, 117]

to_string '松zhou' #"松zhou"
to_string :hello #"hello"
to_string 1 #"1"