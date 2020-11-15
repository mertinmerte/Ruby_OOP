class Person
    attr_reader :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def description
      name + " is " + age.to_s + " years old"
    end
  end
  
  class Child < Person
    def initialize(name, age, hobbies)
      super(name, age)
      @hobbies = hobbies
    end
  end
  
  class Father < Person
    def initialize(name, age, job_title)
      super(name, age)
      @job_title = job_title
    end
  end
  
  metin = Child.new("Metin", 18, ["music", "coding"])
  metin.description # => Metin is 18 years old
  
  mert = Father.new("Mert", 45, "CEO")
  mert.description # => Mert is 45 years old