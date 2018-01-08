class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(args)
    @name, @type, @height = args[:name], args[:type], args[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
