# code here!
class School
    attr_reader :school_name, :roster, :student_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end


    def add_student(student_name, grade)
        if @roster[grade]
        @roster[grade] << student_name
        else
        @roster[grade] = []
        @roster[grade] << student_name
        end
    end 

    def grade(level)
        @roster.detect do|grade, students|
            if grade == level
            return students
            end
        end
    end

    def sort
        sort_hash = {}

        @roster.each do |grade, students|
            sort_hash[grade] =  students.sort 
        end
        sort_hash
    end
end