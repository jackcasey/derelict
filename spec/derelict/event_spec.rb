require 'spec_helper'

module Derelict 
  describe Event do

    it "equals another event with the same content" do
      e1 = Event.new(:a, :b, :c)
      e2 = Event.new(:a, :b, :c)
      e1.should == e2
    end

    it "does not equal another event with different content" do
      e1 = Event.new(:a, :b, :c)
      e2 = Event.new(:a, :c, :b)
      e1.should_not == e2
    end

    it "can generate a message" do
      e = Event.new( "\"hello\"", :says, :Roger )
      e.message.should == "Roger says \"hello\"."
      e = Event.new( "It hurts." )
      e.message.should == "It hurts."
    end

  end
end
