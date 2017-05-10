names = Array.new([]);
alphPos = Array.new(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"])

File.open("names.txt").each do |line|
	# split the text file into individual names
	words = line.split(',')
	# push names into array
	words.each do |words|
		names.push(words)
	end
	# sort names alphabetically
	sorted = names.sort 
	# remove quotation marks from each name
	sorted.each { |n| 
		n.gsub! /"/, ''
	}
	# get length of each name
	sorted.each { |n| 
		puts "name length = #{n.length}"
	}
	# display names
	puts "names are: #{sorted}"

	# get index of each name
	sorted.each_with_index {
		|val, index| puts "name index values are: #{val} => #{index}" 
	}

	# sorted.each { |n| 
	# 	# thisName = n 
	# 	puts n
	# 	puts n.length
	# 	n.split("").each do |i|
	# 		puts i 
	# 		# puts i.is_a?(String)
	# 		# puts alphPos[0].include? i
	# 		# puts i.in?(alphPos)
	# 	end
	# }

	sorted.each { |n| 
		# thisName = n 
		puts n
		puts n[0] # Returns the first character (doh!)
		puts "does alphPos include this letter: #{alphPos.include? n[0]}"
			# puts i.is_a?(String)
			# puts alphPos[0].include? i
			# puts i.in?(alphPos)
	}
end

# get each name from text file
# push into array
# sort alphabetically
# remove quote marks
# get position of name in array
# get length of each name
# 
