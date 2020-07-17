class Dog 
    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name 
        save 
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
        #or you could you @@all.clear
    end

    def self.print_all
        name_array = []
        @@all.each {|dog_name| puts dog_name.name}
    end

    def save
        @@all << self
    end
end