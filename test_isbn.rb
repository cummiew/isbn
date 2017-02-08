require "minitest/autorun"
require_relative "isbn.rb"

	class Testisbn < Minitest::Test

		def test_length_is_equal_to_10
			assert_equal(true,isbn_10_chkr("123456789x"))

		end

		def test_length_is_less_than_10
			assert_equal(false,isbn_10_chkr("12345"))
		
		end

		def test_for_deletion_of_dashes
			assert_equal("12345",isbn_dash_deleter("1-2-3-4-5-"))

		end 


		def test_sum_success_to_num
			assert_equal(true,isbn_sum_10_chkr?("0471958697"))

		end

		def test_sum_success_to_num1
			assert_equal(true,isbn_sum_10_chkr?("877195869x"))

		end
      	
      	def test_sum_success_to_num2
			assert_equal(true,isbn_sum_10_chkr?("877195869X"))

		end	
end