# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            "blah blah blah blah blah"
        end
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def take_bath
        self.hygiene += 4
        #self.hygiene=(@hygiene)       
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def clean?
       @hygiene > 7 
    end

    def happy?
        @happiness > 7
    end

    def hygiene=(hyg_amt)
        if hyg_amt > 10
            @hygiene = 10
        elsif hyg_amt < 0
            @hygiene = 0
        elsif hyg_amt >= 0 && hyg_amt <= 10
            @hygiene = hyg_amt
        end
        @hygiene
    end

    def happiness=(hap_amt)
        if hap_amt > 10
            @happiness = 10
        elsif hap_amt < 0
            @happiness = 0
        elsif hap_amt >= 0 && hap_amt <= 10
            @happiness = hap_amt
        end
        @happiness
    end
        
    # def account_adjustment(adjustment)
    #     bank_account += adjustment
    #     bank_account
    # end
    
end

# "stella" = Person.new