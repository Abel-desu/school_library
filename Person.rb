class Person
    def initialize(id, name = "Unknown", age)
      @id = Random.rand(1..1000)
      @name = name
      @age = 10
    end

    def id
      @id
    end

  def of_age?
    @age >= 18
  end 

  def can_use_services?
    of_age? || @parent_permission
  end
  
  def name=(value)
        @name = value
      end
  end