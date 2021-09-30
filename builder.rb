class SugarWater
  attr_accessor :water, :sugar

  def initialize(water, sugar)
    @water = water
    @sugar = sugar
  end
end

class SugarWaterBuilder
  def initialize
    @sugar_water = SugarWater.new(0, 0)
  end

  def add_material(sugar_amount)
    @sugar_water.sugar += sugar_amount
  end

  def add_water(water_amount)
    @sugar_water.water += water_amount
  end

  def result
    @sugar_water
  end
end

class Director
  def initialize(builder)
    @builder = builder
  end

  def cook
    @builder.add_water(100)
    @builder.add_material(50)
    @builder.add_water(50)
    @builder.add_material(20)
  end
end

builder = SugarWaterBuilder.new
director = Director.new(builder)
director.cook

p builder.result

class SaltWater
  attr_accessor :water, :salt

  def initialize(water, salt)
    @water = water
    @salt = salt
  end
end

class SaltWaterBuilder
  def initialize
    @saltwater = SaltWater.new(0, 0)
  end

  def add_material(material_amount)
    @saltwater.salt += material_amount
  end

  def add_water(water_amount)
    @saltwater.water += water_amount
  end

  def result
    @saltwater
  end
end

builder = SaltWaterBuilder.new
director = Director.new(builder)
director.cook

p builder.result
