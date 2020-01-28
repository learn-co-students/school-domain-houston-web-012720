require 'pry'

class School
    def initialize(model)
        @name = model
        @roster = {}
    end

    attr_reader :roster


    def add_student(name, grade)
        @name = name
        @grade = grade
        
        if !@roster.has_key?(grade)
            @roster[grade] = [] << name
        elsif roster.has_key?(grade)
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        # binding.pry
        @roster.each_value { |c| c.sort!}
        @roster.sort.to_h
    end


    # binding.pry
end
