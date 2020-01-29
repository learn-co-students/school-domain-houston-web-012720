require "pry"

class School
    attr_accessor :roster, :school
def initialize(school)
    @school = school
    @roster = {}
end



def add_student(name, grade)
    roster[grade] ||= [] # also could use if not or unless statement
    roster[grade] << name
    
end
def grade(grade)
    @roster[grade]
end

def sort
@roster.each_value {|kids| kids.sort! }
end
end