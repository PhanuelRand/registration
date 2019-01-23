require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @subject = User.def new
  end

  should validate_presence_of(:email)  
end 
   
  # test "the truth" do
  #   assert true
  # end
end
