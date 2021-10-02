class Saxophone
  def initialize(name)
    @name = name
  end

  def play
    puts "#{@name}演奏"
  end
end

class Trumpet
  def initialize(name)
    @name = name
  end

  def play
    puts "#{@name}演奏"
  end
end

class InstrumentFactory
  def initialize(number_instruments)
    @instruments = []
    number_instruments.times do |i|
      instrument = new_instrument("楽器#{i}")
      @instruments << instrument
    end
  end

  def ship_out
    @tmp = @instruments.dup
    @instruments = []
    @tmp
  end
end

class SaxophoneFactory < InstrumentFactory
  def new_instrument(name)
    Saxophone.new("サックス#{name}")
  end
end

class TrumpetFactory < InstrumentFactory
  def new_instrument(name)
    Trumpet.new("トランペット#{name}")
  end
end

factory = TrumpetFactory.new(3)
trumpets = factory.ship_out
trumpets.each(&:play)

factory = SaxophoneFactory.new(3)
trumpets = factory.ship_out
trumpets.each(&:play)
