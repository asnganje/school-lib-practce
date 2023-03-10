require './nameable'
require './decorator'
require './capitalize_decorator'
require './trimmer_decorator'


class Person < Nameable
    attr_reader :id
    attr_accessor :name, :age

    def initialize(age, name = 'unknown', parent_permission: true)
        super()
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def correct_name
        @name
    end

    def can_use_services?
        is_of_age? || @parent_permission
    end

    private
    def is_of_age?
        @age >= 18
    end
end

