class Book

	#This method properly capitalizes a title of a book
	def titleize(a)
		words = a.split(" ")
		ans = ""
		count = 0

		for x in words
			
			if ( ((["and", "or", "the", "over", "to", "the", "a", "but","in","of","an"]).include? x) && (count != 0) )
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

	def initialize
		@title = ""
	end 

	def title=(title)
		@title = titleize(title)
	end

	def title
		return 	@title 
	end



# write your code here
end

