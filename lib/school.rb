# code here!
class School

    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, number)
        if @roster[number] != nil
            @roster[number].push(name)
        else
            @roster[number] = [name]
        end
    end

    def grade(number)
        @roster[number]
    end

    def sort
        get_all_grades = @roster
        get_all_grades.each { |key, value|
            value.sort!

        
        }
        get_all_grades.to_h
      
    end

end