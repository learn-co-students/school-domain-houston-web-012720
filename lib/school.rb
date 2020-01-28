
class School

  attr_accessor :roster

  def initialize(name)
    @name = name
    self.roster = {}
  end 
 
  def add_student(name, grade)
    roster[grade] = [] if not roster.include?(grade)
    roster[grade] << name  
  end  

  def grade(grade)
    roster[grade]
  end  

  def sort
    roster.each_value { |students| students.sort! }
  end  

end 

