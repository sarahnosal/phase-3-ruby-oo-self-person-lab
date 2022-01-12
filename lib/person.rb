class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
  
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def happiness=(num)
        @happiness = if num > 10
                        10
                     elsif   num < 0
                        0
                     else
                        num
                     end
    end

    def happy? 
        self.happiness > 7
    end

    def hygiene=(num)
        @hygiene =  if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid amount
        bank_account = self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        hygiene = self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        happiness = self.happiness += 2
        hygiene = self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        happiness = self.happiness += 3
        friend_happiness = friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation friend, topic
        case topic
        when "politics"
            [self, friend].each{|person| person.happiness -= 2}
            "blah blah partisan blah lobbyist"
        when 'weather'
            [self, friend].each{|person| person.happiness += 1}
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end