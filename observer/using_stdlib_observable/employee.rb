require 'observer'

class Employee
  include Observable 

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
     @name = name
     @title = title
     @salary = salary
   end 

   def salary=(new_salary)
     changed
     @salary = new_salary
     notify_observers(self)
   end

end