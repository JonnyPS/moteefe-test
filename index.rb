names = Array.new([]);
alphPos = Array.new(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])

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
		puts n.length
	}
	# display names
	puts sorted

	# get index of each name
	sorted.each_with_index {
		|val, index| puts "#{val} => #{index}" 
	}

	sorted.each { |n| 
		thisName = n 
		puts thisName
		puts thisName.length
			thisName.split("").each do |i|
				puts i 
			end
	}

	# get individual letters
	# sorted.each { |n| 
		# n.split("").each do |i|
			# puts i
		# end
	# }
	# sorted.each { |n|
	# 	n.scan /\w/
	# 	puts n
	# }

end

# get each name from text file
# push into array
# sort alphabetically
# remove quote marks
# get position of name in array
# get length of each name
# 
