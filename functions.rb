# Return a reversed copy of the array
def my_reverse(an_array)
  an_array.reverse
end


# Or write reverse method from scratch
def reverse(an_array)
	items = an_array.length
	reverse_array = Array.new(an_array.length)
	while items > 0 do 
		reverse_array[an_array.length - items] = an_array[items - 1]
		items = items -1		
	end
	reverse_array
end



# Return a map of letters and counts of letters
# Letters should be lowercase before counting
# For example, histogram('Hello') returns {'h'=>1,'e'=>1,'l'=>2,'o'=>1}
def histogram(a_string)
    hist = Hash.new(0)
    a_string.scan(/\w/).each { 
        |chr|  
        hist[chr] += 1
    }
    hist     
end


# Sum all the numbers in the array
# an_array can contain lots of different things
# Be sure to only sum the numbers
# (Hint: the is_a? method might be useful here)
def sum_only_numbers(an_array)
   sum = 0
   for item in an_array
  	 if item.is_a?(Integer) || item.is_a?(Float) 
  		sum = sum + item
  	 end
   end	
   sum	
end


# For i from 1 to 100, return an array.
# The elements in the array should follow this algorithm:
# If i is a multiple of 3, the element is 'Fizz'
# If i is a multiple of 5, the element is 'Buzz'
# If i is a multiple of 3 and 5, the element is 'FizzBuzz'
# Otherwise, the element is simply the value of i
# For example [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', ..., 14, 'FizzBuzz', ...]
def fizzbuzz
    result = Array.new(100)
    i = 0
    while i < 100 do
    	if i%3 == 0 && i%5 == 0
    		result[i] = 'FizzBuzz'
    	elsif i%3 == 0 
    		result[i] = 'Fizz'
    	elsif i%5 == 0 
    		result[i] = 'Buzz'	
    	else
    	    result[i] = i
    	end    			
        i += 1
    end	
    result
end

# Uncomment each of these to test your functions
# puts reverse([3,6,'dog']).inspect
# puts histogram('The Quick brown fox').inspect
# puts sum_only_numbers [4, 'foo', [ ], 27, :rain, 3.14]
# puts fizzbuzz.join("\n")