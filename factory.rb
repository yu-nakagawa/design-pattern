class Saxophone
  def initialize(name)
    @name = name
  end

  def play
    puts "#{@name}演奏"
  end
end

class InstrumentFactory
  def initialize(number_saxophones)
    @saxophones = []
    number_saxophones.times do |i|
      saxophone = Saxophone.new("サックス#{i}")
      @saxophones << saxophone
    end
  end

  def ship_out
    @tmp = @saxophones.dup
    @saxophones = []
    @tmp
  end
end

facroty = InstrumentFactory.new(3)
saxophones = facroty.ship_out
saxophones.each(&:play)
