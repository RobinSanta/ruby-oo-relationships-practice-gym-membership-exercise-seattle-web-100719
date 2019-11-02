class Lifter
  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select {|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map {|membership| membership.gym}
  end

  def memberships_cost
    self.memberships.map {|membership| membership.cost}.sum
  end

  def sign_up(cost, gym)
    Membership.new(cost, self, gym)
  end

  def self.lift_total
    sum = @@all.map {|lifter| lifter.lift_total}.sum
    sum / @@all.length
  end

  def self.all
    @@all
  end
end
