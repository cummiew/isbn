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



