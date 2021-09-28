# frozen_string_literal: true

# アヒル
class Duck
  def initialize(name)
    @name = name
  end

  # 食べる(eat)
  def eat
    puts "アヒル #{@name} は食事中です"
  end
end

# カエル
class Frog
  def initialize(name)
    @name = name
  end

  # 食べる(eat)
  def eat
    puts "カエル #{@name} は食事中です"
  end
end
