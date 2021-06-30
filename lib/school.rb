# code here!

class School
    attr_accessor :name, :roster

    def initialize(name, roster={})
        @name = name
        @roster = roster
    end

    def add_student(student, grade)
        roster[grade] ||= [] #if a is undefined then assign it a value of an empty string, else leave it as is. ||=
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        sorted = {}
        roster.map do |grade, students|
            sorted[grade] = students.sort
        end
        sorted
    end
end