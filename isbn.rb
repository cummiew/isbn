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
		
# def isbn_dash_space_deletion(isbn_num)
# 			new_num = isbn_num.delete" "  # new_num becomes isbn_num.delete
# 			return new_num

# end		

# def isbn_sum_10_chkr(isbn_num)
# 		 	isbn_num_array = Array.new
# 			return new_num

# end


def isbn_sum_13_chkr(isbn_num)
			isbn_num_array = Array.new

		
	 # sum_mult == 11 % isbn_num[-1].to_i  Can not do the num 11 with the modulo, % placed after.
	 
	 end

# end
	

# 		 if	sum_mult % 11 == isbn_num[-1].to_i
# 				return true

# 		elsif  (sum_mult % 11) == 10 && isbn_num[-1].downcase == "x"
# 				return true

# 		else
# 				return false

# 		end


# 			return new_num

# end

# 		# test_pass_13_and_10_together
# 		# assert_equal(true,valid_isbn?("978-0-13-149505-0"))lhjhhf

# 		def valid_isbn?(num_str)
# 			no_spaces_no_dashes = deletion_of_dashes_spaces(num_str)

# 		if no_spaces_no_dashes.length == 10 && !(check_for_symbols(no_spaces_no_dashes)) && check_x(no_spaces_no_dashes)
# 				(isbn_sum_10_chkr(no_spaces_no_dashes))

# 		elsif no_spaces_no_dashes.length == 13 && !(check_for_symbols(no_spaces_no_dashes)) && check_x(no_spaces_no_dashes)
  				
#   				return true
#   		else
# 				return false
# 	end
# end