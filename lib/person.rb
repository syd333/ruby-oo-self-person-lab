# your code goes here
#get paid/receive payments, take a bath, call a friend 
#start a conversation, state if they are happy and/or clean


class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
     @name = name 
     @bank_account = 25 
     @happiness = 8
     @hygiene = 8
    end

    def hygiene
        @hygiene =  10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end

    def happiness
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
       @happiness
    end

    def happy?
       @happiness > 7 
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary 
        return 'all about the benjamins'
    end

    def take_bath 
        self.hygiene += 4 
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return  "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness +=3
        friend.happiness += 3
        return "Hi #{person.name}! It's #{friend}. How are you?"
    end

end


