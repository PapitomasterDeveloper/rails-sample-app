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

	test "name should be present" do
		@user.name = "     "
		assert_not @user.valid?
	end

	test "email should be present" do
		@user.email = "     "
		assert_not @user.valid?
	end

	
end
