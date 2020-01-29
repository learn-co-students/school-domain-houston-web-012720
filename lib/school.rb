require 'pry'
class School
    attr_accessor :name,:roster

    def initialize(name)
        @name = name 
        @roster = { }
    end 

   
    def add_student (name , grade)
        @name = name
        @grade = grade
        # roster[grade] ||= []
        # roster[grade] << name
        if roster[grade]
            roster[grade]<< name
        else 
            roster[grade] = [name]
        end 
    end

    def grade (grade)
        roster[grade]
    end

    def sort 
    # roster[grade].sort
        newhash = { }
        roster.each do |grade , names|
            newhash[grade] = names.sort 
        end
        newhash
    end
    end 
    
#     newhash = {}
#     roster.map do |grade , names|
#     newhash[grade] = names.sort
#     newhash
#     end
# end