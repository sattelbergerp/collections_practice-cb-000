def sort_array_asc(array)
	array.sort
end

def sort_array_desc(array)
	array.sort do |o1, o2|
		o2 <=> o1
	end
end

def sort_array_char_count(array)
	array.sort do |o1, o2|
		o1.length <=> o2.length
	end
end

def swap_elements(array)
	tmp = array[1]
	array[1] = array[2]
	array[2] = tmp
	array
end

def reverse_array(array)
	reversed = []
	array.count.times do |i|
		reversed << array[array.count-i-1]
	end
	reversed
end

def kesha_maker(array)
	array.collect do |val|
		val[2]="$"
		val
	end
end

def find_a(array)
	array.select do |val|
		val.start_with?("a")
	end
end

def sum_array(array)
	sum=0
	array.each do |num|
		sum+=num
	end
	sum
end

def add_s(array)
	array.each_with_index.collect do |word, index|
		if index==1
			word
		else
			word+"s"
		end
	end
end