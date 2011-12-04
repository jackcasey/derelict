Given /^a world named "([^"]*)"$/ do |arg1|
  @world = World.new(arg1)
end

When /^I tell it to spawn an actor named "([^"]*)"$/ do |arg1|
  @world << Actor.new(arg1)
end

Then /^I should see "([^"]*)"$/ do |arg1|
  @world.describe.should.include?( arg1 )
end