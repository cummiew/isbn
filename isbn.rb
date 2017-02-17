def isbn_dash_deleter(isbn_num)
# Step 1: This will create a new array, named 'refreshed', without any char that's not an integer or an 'x':

## Step 2: then it will call function "isbn_10_chkr", determining if there are present: a)less than (automatically invalid); b) equal to (further examination by check_x(refreshed) required); or c) greater than 10 characters (further examination by check_the_sum_greater_than_ten(refreshed) required): 

	isbn_string.upcase!
	clay = isbn_string.split("")
	refreshed=[]

	clay.each do |filter|

		if  filter == "0" || filter == "1" || filter == "2" || filter == "3" || filter == "4" || filter == "5" || filter == "6" || filter == "7" || filter == "8" || filter == "9" || filter =="X" || filter =="x"

			refreshed.push(filter)
		end

	end

end

def isbn_10_chkr(isbn_num)
	if refreshed.length<10
		invalid_isbn(refreshed)
	elsif refreshed.length>10
		refreshed=refreshed.join("")
		check_the_sum_greater_than_ten(refreshed)
	elsif refreshed.length==10
		check_x(refreshed)
	end
end

def check_x(refreshed)
    if refreshed.include?("X") && (refreshed.index("X") == refreshed[9])
    	invalid_isbn(refreshed)
    else
		check_the_sum(refreshed)
	end
end

def	check_the_sum_greater_than_ten(refreshed)

	original=refreshed
	sum = 0; index = 0; refreshed = refreshed.chop; alternating_multiplier = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3]
	refreshed.each_char {|number| sum += (number.to_i * alternating_multiplier[index]); index += 1}
	final=((10 - (sum % 10)) % 10).to_s

	if refreshed+final==original
		valid_isbn_thirteen(original)
	else
		invalid_isbn(refreshed)
	end

end

def valid_isbn_ten(refreshed)		

		puts "\nCongratulations!\nYour ISBN #{refreshed.join("")} is Valid!\nHave a nice day:-)\n\n"
		true
end

def valid_isbn_thirteen(original)

		puts "\nCongratulations!\nYour ISBN #{original} is Valid!\nHave a nice day:-)\n\n"
		true
end

def invalid_isbn(refreshed)

		puts "\nSorry 'bout your luck!\nYou got hold of a counterfeit ISBN!\nBetter luck next time...\n\n"

		false

end