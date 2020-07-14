class Dog
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @save = save
  end
  
  def self.all
    @@all 
  end
  
  def self.clear_all
    @@all = [] #self.all.clear
  end
  
  def self.print_all
    self.all.each{|dog| puts dog.name}
  end
  
  def save
    @@all << self #self.all << self
  end
  
  
end
