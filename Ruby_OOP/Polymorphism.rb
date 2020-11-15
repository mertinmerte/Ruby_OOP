class Person
    def initialize(name)
      @name = name
    end
  
    def my_name
      @name
    end
  end
  
  class Child < Person
  end
  
  class Father < Person
    def my_name
      "My name is #{@name}."
    end
  end
  
  metin = Child.new("Metin")
  mert = Father.new("Mert")
  
  [metin, mert].each(&:my_name) # => Metin, My name is Mert
