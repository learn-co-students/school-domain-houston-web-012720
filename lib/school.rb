require 'pry'

class School 
    def initialize (school_name)
        @school_name = school_name
        @roster = {}
    end
    
    attr_accessor :roster

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    # def sort
    #     sorted = {}
    #     @roster.each do |grade, students| 
    #         sorted[grade] = students.sort
    #     end
    #     sorted
    # end

    #but also in a short way


    def sort 
        @roster.each_value do |students|
            students.sort!
            #sort! sorts in place insstead of creating a new array
        end
    end
end

# slhs = School.new ("Seven Lakes")
# slhs


# binding.pry 
# 0