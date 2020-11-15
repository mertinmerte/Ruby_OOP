class Hasta_Covid_19
    attr_reader :identityNumber, :name, :surname, :gender, :age, :country, :symptoms, :chronicAilments, :estimatedPeopleinContactCount
    
    def initialize(identityNumber, name, surname, gender, age, country, symptoms, chronicAilments, estimatedPeopleinContactCount)
        @identityNumber = identityNumber
        @name = name
        @surname = surname
        @gender = gender
        @age = age
        @country = country
        @symptoms = symptoms
        @chronicAilments = chronicAilments
        @estimatedPeopleinContactCount = estimatedPeopleinContactCount
    end
end

  puts "Sağlık Bakanlığı Covid-19 Bilgi Sistemine Hoşgeldiniz"
    hastalar = Array.new
    def Listele(hastalar)
        estimatedPeopleinContactCount = 0
        hastalar.each do |item|
        puts item.identityNumber
        puts item.name
        puts item.surname
        puts item.gender
        puts item.age
        puts item.country 
        puts item.symptoms
        puts item.chronicAilments
        puts item.estimatedPeopleinContactCount
        estimatedPeopleinContactCount = estimatedPeopleinContactCount + item.estimatedPeopleinContactCount 
        end
        puts "Toplam Enfekte Olması Muhtemel Kişi Sayısı: #{estimatedPeopleinContactCount}"
    end

    def Sınıf(hastalar)
        puts "hasta sayısı : #{hastalar.count}"
    end

     def Ekle(hastalar)
        
        print "Hastanın TC Numarası: "
        identityNumber = gets.to_i
        print "Hastanın Adı: "
        name = gets.to_s
        print "Hastanın Soyadı: "
        surname = gets.to_s
        print "Hastanın Cinsiyeti: "
        gender = gets.to_s
        print "Hastanın Yaşı: "
        age = gets.to_i
        print "Hastanın Bulunduğu İl: "
        country = gets.to_s
        print "Hastanın Varsa Semptomlarını Belirtiniz Yoksa 0 Bilgisi Giriniz: "
        symptoms = gets.to_s
        print "Hastanın Varsa Kronik Rahatsızlığı Varsa Belirtiniz Yoksa 0 Bilgisi Giriniz: "
        chronicAilments = gets.to_s
        print "Hastanın Temasta Bulunduğu Tahmini Kişi Sayısını Belirtiniz Yoksa 0 Giriniz: "
        estimatedPeopleinContactCount = gets.to_i

        hasta = Hasta_Covid_19.new(identityNumber, name, surname, gender, age, country, symptoms, chronicAilments, estimatedPeopleinContactCount)

        hastalar.push(hasta)
    
    end

    def Cikis()
        puts "Sağlıklı günler dileriz." 
    end


    def Main(hastalar)
    print "Komut Giriniz:"
    komut = gets.chomp

    if komut == "EKLE" 
        Ekle(hastalar)
        Main(hastalar)
    elsif komut == "LISTELE"
        Sınıf(hastalar)
        Listele(hastalar)
        Main(hastalar)
     elsif komut == "CIKIS"
        Cikis()
     else
        puts "Hatalı bir komut girdiniz." 
        Main(hastalar)
     end
    end

Main(hastalar)

