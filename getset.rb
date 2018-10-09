class Person

  def initialize(name)
    class << self
    attr_accessor :name
    @name = name
  end

end

p = Person.new('L. Ron')
puts p.name