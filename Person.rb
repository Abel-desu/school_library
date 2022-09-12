class Person
  def initialize(_id, name, _age)
    @id = Random.rand(1..1000)
    @name = name
    @age = 10
  end

  attr_reader :id

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  attr_writer :name
end
