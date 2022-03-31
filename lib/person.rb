require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8

    end 

    def happiness=(num)
        if num > 10 
            @happiness = 10 
        elsif num < 0 
            @happiness = 0
        else 
            @happiness = num
        end 
    end

    def hygiene=(num)
        if num > 10 
            @hygiene = 10
        elsif num < 0 
            @hygiene = 0
        else 
            @hygiene = num
        end 
    end 

    def happy?

        if @happiness > 7 
            true
        else 
            false
        end 
    end 

    def clean? 
        if @hygiene > 7 
            true
        else 
            false
        end 
    end 

    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end 

    def take_bath 
       @hygiene += 4
       self.hygiene = @hygiene
       '♪ Rub-a-dub just relaxing in the tub ♫'
    end 

    def work_out 
        @hygiene -= 3
        self.hygiene = @hygiene
        @happiness += 2
        self.happiness = @happiness
        "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3 
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end 
    end 

end 



# linda = Person.new("Linda")

# binding.pry


