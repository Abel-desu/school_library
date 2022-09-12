require_relative './Person'


class Teacher < Person
  attr_reader :specialization
  def initialize(id, name, specialization, age)
    super(age, name, id)
    @specialization = specialization
    @class = 'Teacher'
  end

  def can_use_services?
    true
  end
end
