require 'pp'

# blakes_hash = {:name => "blake"}
# def operate_on_a_hash(some_hash)
#   some_hash[:name] = "steven"
# end

# operate_on_a_hash(blakes_hash)
# pp blakes_hash

# my_int = 7
# def operate_on_a_integer(some_integer)
#   some_integer = 8
# end
# operate_on_a_primitive(my_int)
# pp my_int

# a_string = "some string"
# def mutate_a_string(my_string)
#   my_string.upcase!
# end

# mutate_a_string(a_string)
# pp a_string

another_string = "some string"
def dont_mutate_a_string(my_string)
  my_string.upcase
end

dont_mutate_a_string(another_string)
pp another_string
# some_array = [1,2,3]
# def operate_on_array(blakes_array)
#   blakes_array << "hello"
# end

# operate_on_array(some_array)
# pp some_array
