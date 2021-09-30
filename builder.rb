class SugarWater
  attr_accessor :water, :sugar

  def initialize(water, sugar)
    @water = water
    @sugar = sugar
  end

  def add_material(sugar_amount)
    @sugar += sugar_amount
  end
end

class SaltWater
  attr_accessor :water, :salt

  def initialize(water, salt)
    @water = water
    @salt = salt
  end

  def add_material(salt_amount)
    @salt += salt_amount
  end
end

class MaterialWaterBuilder
  def initialize(material_water_class)
    @material_water = material_water_class.new(0, 0)
  end

  def add_material(material_amount)
    @material_water.add_material(material_amount)
  end

  def add_water(water_amount)
    @material_water.water += water_amount
  end

  def result
    @material_water
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

builder = MaterialWaterBuilder.new(SaltWater)
director = Director.new(builder)
director.cook

p builder.result
