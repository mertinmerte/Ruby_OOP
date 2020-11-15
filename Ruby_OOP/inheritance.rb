class GeometricObject
    attr_reader :color, :filled

    def initialize (color, filled)
        @color = color
        @filled = filled
    end
    def to_s
        "#{@color}, #{@filled}"
    end
end


class Circle < GeometricObject
    attr_reader :radius

    def initialize (color, filled, radius)
        super(color, filled)
        @radius = radius
    end
    def getArea(radius)
        Math::PI*radius*radius
    end
    def getPerimeter(radius)
        Math::PI*radius*2
    end
    def getDiameter(radius)
        radius*2
    end
    def to_s
        "#{@color}, #{@filled}, yarıçap = #{@radius}"
    end
end


class Rectangle < GeometricObject
    attr_reader :width, :height

    def initialize (color, filled, width, height)
        super(color, filled)
        @width = width
        @height = height
    end
    def getArea(width, height)
        width*height
    end
    def getPerimeter(width, height)
        (width + height)*2
    end
    def to_s
        "#{@color}, #{@filled}, genişlik = #{@width}, yükseklik = #{@height}"
    end
end


class Test
    def self.main
    print "Dairenin Yarıçapını Giriniz: "
    radius = gets.to_i
    
    daire = Circle.new("red", true, radius)
    puts daire 
    alan = daire.getArea(radius)
    puts "Dairenin Alanı: #{alan}"
    
    cevre = daire.getPerimeter(radius)
    puts "Dairenin Çevresi: #{cevre}"
    
    cap = daire.getDiameter(radius)
    puts "Dairenin Çapı: #{cap}"


    print "Dikdörtgenin Genişliğini Giriniz: "
    width = gets.to_i
    print "Dikdörtgenin Yüksekliğini Giriniz: "
    height = gets.to_i

    dikdortgen = Rectangle.new("red", true, width, height)
    puts dikdortgen 
    alan = dikdortgen.getArea(width, height)
    puts "Dikdörtgenin Alanı: #{alan}"

    cevre = dikdortgen.getPerimeter(width, height)
    puts "Dikdörtgenin Çevresi: #{cevre}"
    end
end

Test.main
