class Person
  def initialize(_id, _age, name = 'unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = 10
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private :of_age?
  public :can_use_services?
  attr_reader :id
  attr_accessor :name, :age
end
