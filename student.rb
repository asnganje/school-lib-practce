require './person'
class Student < Person
    attr_accessor :classroom

    def initialize(name = 'unknown', age, classroom, parent_permission: true)
        super(name, age, parent_permission)
        @classroom = classroom
    end

    def playhooky
        "¯\(ツ)/¯"
    end 
end