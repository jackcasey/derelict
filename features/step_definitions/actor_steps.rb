Given /^a room named "([^"]*)"$/ do |name|
  @room = Derelict::Room.new(name)
end

When /^I tell it to spawn an actor named "([^"]*)"$/ do |name|
  @room << Derelict::Actor.new(name)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  @room.event_messages.should include arg1
end

Given /^our party$/ do
  @room = Derelict::Room.new("The Party")
  @jemima = Derelict::Actor.new("Jemima")
  @ralph =  Derelict::Actor.new("Ralph")
  @room << @jemima
  @room << @ralph
end

When /^([^ ]*) says "([^"]*)"$/ do |who, what|
  @room.find_actor(who).say(what)
end

Then /^([^ ]*) should hear "([^"]*)" from ([^ ]*)$/ do |listener, words, speaker|
  @room.find_actor(listener).heard.should include "#{speaker} says \"#{words}\"."
end