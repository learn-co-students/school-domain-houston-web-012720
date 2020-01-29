class School 
    
    attr_accessor :name, :roster 
    
    def initialize(name)
        @name = name 
        @roster = {}
    end 

    def add_student(name, grade)    
        roster[grade] = [] unless roster.include?(grade) 
        roster[grade] << name
    end

    def grade(grade)
        @roster[grade] 
    end
    
    def sort
        roster.each do |key, value|
            roster[key] = value.sort
        end
    roster
    end 
end 