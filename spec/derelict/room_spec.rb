require 'spec_helper'

module Derelict 

  describe Room do

    let(:b){ Room.new("A Basement") }

    it "should be able to be named" do
      b.name.should == "A Basement"
    end

    it "should remember events" do
      
      b.event( Event.new("An event happens.") )
      b.events.should include Event.new("An event happens.")
    end

    it "can find actors inside" do
      j = Actor.new("Jonesy")
      b << j
      b.find_actor( "Jonesy" ).should == j
    end

    it "can listen to actors" do
      a = Actor.new
      b << a
      a.listeners.should include b
      a.say( "greets" )
      b.events.should include Event.new( "\"greets\"", :says, a )
    end

    it "can relay events to actors" do
      j = Actor.new("Jonesy")
      r = Actor.new("Roger")
      b << j
      b << r
      j.say("Come over here.")
      r.say('Roger!')
      j.heard.should include "Roger says \"Roger!\"."
      r.heard.should include "Jonesy says \"Come over here.\"."
    end

  end

end