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
		
def isbn_dash_space_deletion(isbn_num)
		new_num = isbn_num.delete" " 
		return new_num

end

# def isbn_sum_10_chkr(isbn_num)
# 		isbn_num_array = Array.new
# 		return new_num
# 	end

def isbn_sum_10_chkr?(isbn_num)
	new_numarray = isbn_num.chop.split("").map(&:to_i)
	mult_accum = 1
	sum_mult = 0
	new_numarray.each do|isbnnum|
	sum_mult += (isbnnum*mult_accum)
		mult_accum += 1

	end

	if (sum_mult % 11) == 10
	 isbn_num[-1].downcase == "x"

	else
	 # sum_mult == 11 % isbn_num[-1].to_i
	 sum_mult % 11 == isbn_num[-1].to_i
		
	end

end

