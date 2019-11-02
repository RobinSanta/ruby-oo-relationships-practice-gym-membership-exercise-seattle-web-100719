# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter_1 = Lifter.new("Lifter_1", 123)
lifter_2 = Lifter.new("Lifter_2", 234)
lifter_3 = Lifter.new("Lifter_3", 345)

gym_1 = Gym.new("Gym_1")
gym_2 = Gym.new("Gym_2")
gym_3 = Gym.new("Gym_3")

membership_1 = Membership.new(30, lifter_1, gym_1)
membership_2 = Membership.new(40, lifter_2, gym_2)
membership_3 = Membership.new(50, lifter_3, gym_3)
membership_4 = Membership.new(50, lifter_1, gym_3)

binding.pry

puts "Gains!"
