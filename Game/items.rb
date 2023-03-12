
class Item
    attr_reader :isim , :price

    def initialize(isim: , price:)
        @isim = isim
        @price = price
    end

    
end



class Sword < Item
    attr_reader :damage
    def initialize(isim: , price: , damage:)
        super(isim: , price:)
        @damage = damage
    end
    def use
        $player.damage = @damage
    end
    
end

class Armor < Item
    attr_reader :defence
    def initialize(isim: , price: , defence:)
        super(isim: , price:)
        @defence= defence
    end
    def use
        $player.defence = @defence
    end
end

class Accesory < Item
    attr_reader :damage
    def initialize(isim: , price: , type: , damage:)
        super(isim: , price:)
        @type = type
        @damage = damage
    end
    def use
        $player.damage = @damage
    end
end

$allitems = Array.new

$baslangickilic = Sword.new(isim: "Başlangıç Kılıcı" ,price: 0 , damage: 1)
$baslangiczirh = Armor.new(isim: "Başlangıç Zırhı" , price: 0, defence: 1)
$aykilici = Sword.new(isim: "Ay Kılıcı" ,price: 100 , damage: 3)
$ayzirhi =Armor.new(isim: "Ay Zırhı" , price: 100, defence: 3)
$guneskilici=Sword.new(isim: "Güneş Kılıcı" ,price: 200 , damage: 5)
$guneszirhi=Armor.new(isim: "Günşe Zırhı" , price: 200, defence: 5)
$baronkilici=Sword.new(isim: "Baron Kılıcı" ,price: 300 , damage: 8)
$baronzirhi=Armor.new(isim: "Baron Zırhı" , price: 300, defence: 8)

$allitems << $baslangickilic
$allitems << $baslangiczirh
$allitems << $aykilici
$allitems << $ayzirhi
$allitems << $guneskilici
$allitems << $guneszirhi
$allitems << $baronkilici
$allitems << $baronzirhi