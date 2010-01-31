Factory.define :message do |m|
  m.body "What are you guys up to tonight?"
  m.association :user
end