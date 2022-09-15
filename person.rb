require_relative 'nameable'

class Person < Nameable
  def initialize(_age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = 10
    @parent_permission = parent_permission
  end

  def correct_name
    @name
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
  attr_accessor :name, :age, :parent_permission
end
