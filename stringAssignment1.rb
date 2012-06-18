#!/usr/bin/ruby -w

class StringOperations

	@string1="RUBY parses a file by looking for <br/> one of the special tags that tells it to start interpreting the text as RUBY code. The parser then executes all of the 	code it finds until it runs into a RUBY closing <br/> tag."

	@string2="RUBY does not require (or support) explicit type definition in variable declaration; a variable's type is determined by the context in which the variable is 	used.
"
	

	def self.occurance
		occurance=@string1.scan("RUBY").count
		puts "The word RUBY occured #{occurance} times"
	end
	
	def self.position
		positions =@string1.enum_for(:scan, /RUBY/).map { Regexp.last_match.begin(0) }
		puts "The word RUBY occures at positions :"
		puts positions		
		#puts "RUBY word accures at position"
		#pos=string1.index("RUBY")
	end
	
	def arrayRecursive(stringArray)
 		if stringArray[0].is_a? String
				arrayRecursive(stringArray)
  		else
    			puts stringArray.map { |t| arrayRecursive(t) }
  		end
	end

	def self.arrayOfWords
		stringArray=@string1.split(/ /)
		arrayRecursive(stringArray,0)
	end

	def self.arrayRecursive(stringArray,i)
		if i<stringArray.length
			print stringArray[i]
			print " "
            		arrayRecursive(stringArray,i+1)
        	end
  	end	
	
	def self.capitaliz
		string=@string1.capitalize 
		puts string
	end

	def self.combine
		string=@string1+@string2
		puts string
	end

	def self.heredoc
		puts "<<-eos"
		puts @string1
		puts "eos"
	
		puts "<<-eos"
		puts @string2
		puts "eos"
	end
	
	def self.curDate
		#t = Time.now()
		#puts t.strftime("The date is %m/%d/%y")
		puts "Current date is:"
		puts Time.now.localtime.strftime("%Y-%m-%d")

	end
	
	def self.date
		date = Time.local(2012, 01, 12) 
        	requiredDate = date.strftime('%dth %b %Y')
        	print requiredDate
	end

	def self.dateAfter7Days
		date = Time.new
        	dateAfter7Days = date+(60*60*24*7)
        	printf"The date after 7 days :"
		print dateAfter7Days
	end

	def self.stringCut
		string=@string1.split('').each_slice(@string1.length/4).map {|s| s.join('')}
		puts string
	end

	def self.reverseStringWords
		string=@string1.split('.')
		puts "String1 after dividind occurance of . is:"
		print string
		puts "array in reverse word sequence is:"
		reverseString=string.first.split.reverse.join(' ') + string.last.split.reverse.join(' ')
		print reverseString
	end
		
 	def self.removeHtmlCharacter
		puts "After removing HTML characters string1 changes to:"	
		print @string1.gsub!(/(<[^>]*>)|\n|\t/s) {" "}

	end

	def self.printRuby
		print @string1.scan("RUBY")
	end

	def self.printLength
		print "Length of string1 is :" 
		puts @string1.length
		print "Length of string2 is :" 
		puts @string2.length
	end

	def self.writeString1ToFile
		string1File = File.new("string1File.txt", "w")
		string1File.write(@string1)
		string1File.close
	end

	def self.globleVariables
		global_variables.each{|x| puts x}
	end
	
	def self.compareDates
		date1 = Time.local(2011,12,05)
        	date2 = Time.local(2010,12,04)
        	if date1>=date2
        		result=(date1-date2)/60/60/24
       		else
        		result=(date2-date1)/60/60/24
       		end
        	print result
        end

	def self.dateAfter20Days
		date = Time.new
        	dateAfter20Days = date+(60*60*24*20)
		printf"The date after 20 days :"        	
		print dateAfter20Days
        end

	def self.dateArray
        	puts Time.now.to_a[0..Time.now.to_a.length]
		
        end

	def self.menu
		puts "String Operations are:"
		puts "1. Find occurance of RUBY from string 1"
		puts "2. Find the position where RUBY occures in the string 1."
		puts "3. Create array of words in string 1 & print them using a recursive function."
		puts "4. Capitalise string 1"
		puts "5. Combine string 1 & 2."
		puts "6. Print string 1 & 2 using heredoc."
		puts "7. Print current date"
		puts "8. print 12th Jan 2012"
		puts "9. add 7 days in current date"
		puts "10. Cut the string 1 into 4 parts & print it."
		puts "11. Divide the string 1 by occurances of '.'. Combine the array in reverse word sequence"
		puts "12. Remove the HTML characters from string."
		puts "13. Print the 'RUBY' word from string 1 by traversing it using string functions"
		puts "14. Find the length of string 1 & 2"
		puts "15. Create file & write string 1 to that file using RUBY functions."
		puts "16. Print all Global varibles provided by RUBY"
		puts "17. Usage and examples of Header (RUBY) "
		puts "18. Redirect page 1 to page 2."
		puts "19. Compare two dates. (12-4-2010 & 12-5-2011). Calculate the days between these two dates."
		puts "20. Print date after 20 days from current date."
		puts "21. Print date in array format."

		puts "Enter your choice"
		choice=gets()	

		case choice.to_i()
 			when 1
 	 		StringOperations.occurance
 			when 2
  	 		StringOperations.position
			when 3
  			StringOperations.arrayOfWords
 			when 4 
	 		StringOperations.capitaliz
 			when 5 
	 		StringOperations.combine	
 			when 6
	 		StringOperations.heredoc	
 			when 7
	 		StringOperations.curDate
			when 8
	 		StringOperations.date	
			when 9
	 		StringOperations.dateAfter7Days	
 			when 10
	 		StringOperations.stringCut	
 			when 11
	 		StringOperations.reverseStringWords 
 			when 12 
	 		StringOperations.removeHtmlCharacter
 			when 13
	 		StringOperations.printRuby
 			when 14
	 		StringOperations.printLength
			when 15
			StringOperations.writeString1ToFile
 			when 16
			StringOperations.globleVariables
 			when 19
			StringOperations.compareDates
 			when 20
			StringOperations.dateAfter20Days
 			when 21
			StringOperations.dateArray
			else
  			puts "Sorry...Wrong Option"
		end
	end
end


StringOperations.menu
		
