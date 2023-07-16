# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say(word_said)
        "*~* #{word_said} *~*"
    end
end
unicorn1 = Unicorn.new("Dave")
p unicorn1
unicorn2 = Unicorn.new("Charlie", "blue")
p unicorn2
p unicorn1.say("Neigh")
p unicorn2.say("Hello")




#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name, pet = "bat", thirsty = true)
        @name = name
        @pet = pet
        @thirsty = thirsty
    end
    def drink(drink_status)
        @thirsty = false
    end
end
vampire1 = Vampire.new("Dracula", "cat")
p vampire1
vampire1.drink(true)
p vampire1
vampire2 = Vampire.new("Nosferatu")
p vampire2
vampire2.drink(true)
p vampire2


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
    end
    def eat(times_eaten)
        if times_eaten >= 4 then @is_hungry = false
        else @is_hungry = true
        end
    end 
end
dragon1 = Dragon.new("Abel", "Phineas", "blue")
p dragon1
dragon1.eat(3)
p dragon1
# I wanted to code this in a way that when I would run the code/ each time I called the eat method, it would increase the times_eaten by 1. 
# However, I could not figure out how to count the times code has been run, and instead coded times_eaten as an integer which could be reassigned.


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    def initialize(name, disposition, age = 0, is_adult = false, is_old = false, has_ring = false)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
    end
    def celebrate_birthday(birthday_age)
        @age = birthday_age + 1

         if @age >= 33 
             @is_adult = true
        else
             is_adult = false
         end

        if @age >= 101 
            @is_old = true
        else 
            @is_old = false
        end

        if @name == "Frodo"
            @has_ring = true
        else 
            @has_ring = false
        end
    end
end
hobbit1 = Hobbit.new("Frodo", "kind")
p hobbit1
hobbit1.celebrate_birthday(101)
p hobbit1
p hobbit1
hobbit2 = Hobbit.new("Linus", "mean")
hobbit2.celebrate_birthday(33)
p hobbit2
hobbit3 = Hobbit.new("Baby", "awful")
p hobbit3

# I encountered the same issue here as I did in the dragon exercise, where I was unsure as to how to increase the age by 1 each time the code was run/celebrate_birthday method was called.
# Again, I ended up coding the previous_age parameter as an integer.