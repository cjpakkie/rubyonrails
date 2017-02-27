class AppleTree
  attr_accessor :height, :age, :apples
  def initialize
    @height = 0
    @age = 0
    @apples = []
  end

  def count_apples
    @apples.count
  end

  def year_gone_by
    @age += 1
    @height += 2
    self
  end

  def grow_apples
    if (@age.between?(3,10))
      @apples.push("Fuji")
    end
  end

  def pick_apples
    puts "You picked #{count_apples} apples"
    @apples.clear
  end
end
