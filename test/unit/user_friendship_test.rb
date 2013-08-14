require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "that creating a friendship works" do
  	assert_nothing_raised do
  	UserFriendship.create user: users(:tom), friend: users(:mike)
     end 
  end

  test "that creating a friendship based on user id and friends id works" do
   UserFriendship.create user_id: users(:tom).id, friend_id: users(:mike).id
  assert users(:tom).friends.include?(users(:mike))
 end 
end
