require "pry"

class Person
    attr_writer :bank_account
    attr_writer :name
    attr_writer :happiness
    attr_writer :hygiene

    def initialize(name)
        @name = name
    end 

    def name(name)
        name
    end 

    def bank_account(bank_account = 25)
        @bank_account = bank_account
    end 

    def happiness(happiness = 8)
        @happiness = happiness
    end 

    def hygiene(hygiene = 8)
        @hygiene = hygiene
    end 
  
end 

linda = Person.new("Linda")

