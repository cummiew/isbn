def isbn_10_chkr(isbn_num)
		if ((isbn_num.length < 10) || (isbn_num.length > 10))

			return false
		else
			return true

		end
end

def isbn_dash_deleter(isbn_num)
			new_num = isbn_num.delete"-"
			return new_num 

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