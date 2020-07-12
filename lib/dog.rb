##
## 1. Create a Dog class that initializes
##      with a name and stores each new
##      instance of Dog that is instantiated.
## 2. Create @@all class variable set to an
##      empty array.
## 3. Create a class reader method #all that
##      reads the @@all class variable
## 4. Create a method #print_all that iterates
##      over all individual dogs in the @@all
##      array and outputs their name
## 5. Create a method #save which adds self
##      to the @@all array.
##      -call #save when each new instance of
##       Dog is instantiated.
## 6. Create a #name reader method 
## 7. Create a class method #clear_all that
##      empties the @@all array.

class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        save 
    end 

    def self.all
        @@all
    end 

    def self.print_all
        @@all.each {|var| puts var.name}
    end 
    
    def save
        @@all << self
    end 

    def self.clear_all
        @@all.clear 
    end 

end 