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

  end
end