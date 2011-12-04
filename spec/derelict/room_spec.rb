require 'spec_helper'

module Derelict 

  describe Room do

    it "should be able to be named" do
      Room.new("A Basement").name.should == "A Basement"
    end

  end

end