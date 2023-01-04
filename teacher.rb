require './person'

class Teacher < Person
    attr_accessor :specialization
    def initialize(name='unknown', age, specialization, parent_permission: true)
        super(name, age, parent_permission)
        @specialization = specialization
    end

    def can_use_services?
        true
    end
end
