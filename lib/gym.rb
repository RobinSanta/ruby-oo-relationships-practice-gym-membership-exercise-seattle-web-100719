class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def gym_memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def gym_lifters
    self.gym_memberships.map {|membership| membership.lifter}
  end
  
  def gym_lifter_names
    self.gym_memberships.map {|membership| membership.lifter.name}
  end

  def gym_lift_total
    self.gym_memberships.map {|membership| membership.lifter.lift_total}.sum

  end

  def self.all
    @@all
  end
end
