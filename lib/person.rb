class Person

    attr_reader :name, :happiness,:hygiene

    attr_writer :bank_account


    def initialize(name)
        @name = name
        @bank = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account
        return @bank
    end


    def happiness=(x)
        if x >= 10
        @happiness = 10
        elsif x <= 0
        @happiness = 0
        else
        @happiness = x
        end
    end


    def hygiene=(i)
        if i >= 10
            @hygiene = 10
            elsif i <= 0
            @hygiene = 0
            else
            @hygiene = i
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



    def get_paid(salary)
    @bank += salary
    return 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    


    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end


    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
                return 'blah blah partisan blah lobbyist'

            elsif topic == "weather"
                self.happiness += 1
                person.happiness += 1
                return "blah blah sun blah rain"
            else 
                return "blah blah blah blah blah"
        end
    end

end

#great lab