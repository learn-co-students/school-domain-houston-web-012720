# code here!
class School

    attr_accessor :school_name , :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new{|h,k| h[k] = []}
    end
    def add_student (value,key)
        @roster[key] << value
    end
    def grade(key)
        @roster[key]
    end
    def sort
        newHash = {}
        keys = @roster.keys.sort
        for i in 0...keys.length
            newHash[keys[i]] = @roster[keys[i]].sort
        end
        newHash
    end
end
