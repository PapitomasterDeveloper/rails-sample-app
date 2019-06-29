require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	# The setup method runs automatically before each test
	def setup
		# Becaouse @user is an instance variable, it's available across all tests
		@user = User.new(name: "Angel", email: "bizarroflame@gmail.com")
	end

	test "should be valid" do
		assert @user.valid?
	end
end
