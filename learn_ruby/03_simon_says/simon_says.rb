#write your code here
def echo (a)
	return a
end

def shout (a)
	return a.upcase
end 

def repeat (a , n = 2)
	ans = ""

	for i in 1..n
		ans += a + " "
	end 

	return ans.strip

end 

def start_of_word (a,n =2)
	return (a[0..n-1])

end 


def first_word(a)
	return a.split(" ")[0]
end 


def titleize(a)
	words = a.split(" ")
	ans = ""
	count = 0

	for x in words
		
		if ( ((["and", "or", "the", "over", "to", "the", "a", "but"]).include? x) && (count != 0) )
			puts x.downcase
			ans += x.downcase
		else
			ans += x.capitalize
		end
		ans+= " "
		count+=1
	end

	return ans.strip

end

puts titleize("The Bridge over The River Kwai")


