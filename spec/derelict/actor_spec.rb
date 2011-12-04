require 'spec_helper'

module Derelict 
  describe Actor, " - An Actor" do

    context "without a given name" do
      let(:a) { Actor.new }

      it "should have a name of 2 words" do
        a.name.length.should >= 3
        a.name.include?(" ").should be_true
      end
    end

    context "with a given name" do
      let(:a) { Actor.new("Phillanius Derringer") }

      it "should remember the name" do
        a.name.should == "Phillanius Derringer"
      end
    end

    context "with a listening delegate" do
      let(:a) { Actor.new("Phillanius Derringer") }
      let(:delegate) { double('delegate') }

      it "should notify the delegate of events" do
        a.listeners << delegate
        delegate.should_receive(:event).with( Event.new("\"Hello!\"", :says, a) )
        a.say("Hello!")
      end
    end

    it "can hear" do
      a = Actor.new
      a.hear( "A wind rustles the leaves." )
      a.heard.should include "A wind rustles the leaves."
    end

  end
end