names = Array.new([]);

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
		puts n.length
	}
	# display names
	puts sorted

end

# iterate through array
# get length of each name
# get position of name in array





