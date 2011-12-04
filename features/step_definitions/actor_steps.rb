Given /^a room named "([^"]*)"$/ do |arg1|
  @room = Derelict::Room.new(arg1)
end

When /^I tell it to spawn an actor named "([^"]*)"$/ do |arg1|
  @room << Derelict::Actor.new(arg1)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  @room.history.should include arg1
end