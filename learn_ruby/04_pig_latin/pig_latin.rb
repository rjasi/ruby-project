#write your code here
def doesQUexist(x,i)
	if (x[0..i].include? "qu")
		return x[i+1..-1] +x[0..i] + "ay" 
	else 
		return x[i..-1] + x[0..i-1] +"ay"

	end
end 


def translate (word)
	if word.length <= 0 
		return ""
	end 

	words = word.split
	translated = ""


	for x in words
		#find how many consanants are there before a vowel appears 
		num_cons = 0

		x.split("").each do |i|
			if (['a','e','i','o','u'].include? i)
				break
			else
				num_cons +=1
			end
		end 

		case num_cons
		when 0
			translated += x + "ay "

		else
			translated += doesQUexist(x,num_cons) + " "
		end
		

	end

	return translated.strip

end

puts translate("apple") 