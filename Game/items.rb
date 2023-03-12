
class Item
    attr_reader :name , :price

    def initialize(name: , price:)
        @name = name
        @price = price
    end

    
end



class Sword < Item
    attr_reader :damage
    def initialize(name: , price: , damage:)
        super(name: , price:)
        @damage = damage
    end
    def use
        $player.damage = @damage
    end
    
end

class Armor < Item
    attr_reader :defence
    def initialize(name: , price: , defence:)
        super(name: , price:)
        @defence= defence
    end
    def use
        $player.defence = @defence
    end
end


#Haven't use yet.
class Accesory < Item
    attr_reader :damage
    def initialize(name: , price: , type: , damage:)
        super(name: , price:)
        @type = type
        @damage = damage
    end
    def use
        $player.damage = @damage
    end
end


$baslangickilic = Sword.new(name: "Başlangıç Kılıcı" ,price: 0 , damage: 1)
$baslangiczirh = Armor.new(name: "Başlangıç Zırhı" , price: 0, defence: 1)
$aykilici = Sword.new(name: "Ay Kılıcı" ,price: 100 , damage: 3)
$ayzirhi =Armor.new(name: "Ay Zırhı" , price: 100, defence: 3)
$guneskilici=Sword.new(name: "Güneş Kılıcı" ,price: 200 , damage: 5)
$guneszirhi=Armor.new(name: "Güneş Zırhı" , price: 200, defence: 5)
$baronkilici=Sword.new(name: "Baron Kılıcı" ,price: 300 , damage: 8)
$baronzirhi=Armor.new(name: "Baron Zırhı" , price: 300, defence: 8)
$sovalyekilici=Sword.new(name: "Şövalye Kılıcı" ,price: 400 , damage: 14)
$sovalyezirhi=Armor.new(name: "Şövalye Zırhı" , price: 400, defence: 14)


$startersword = Sword.new(name: "Starter Sword" ,price: 0 , damage: 1)
$starterarmor = Armor.new(name: "Starter Armor" , price: 0, defence: 1)
$moonsword = Sword.new(name: "Moon Sword" ,price: 100 , damage: 3)
$moonarmor =Armor.new(name: "Moon Armor" , price: 100, defence: 3)
$sunsword=Sword.new(name: "Sun Sword" ,price: 200 , damage: 5)
$sunarmor=Armor.new(name: "Sun Armor" , price: 200, defence: 5)
$baronsword=Sword.new(name: "Baron Sword" ,price: 300 , damage: 8)
$baronarmor=Armor.new(name: "Baron Armor" , price: 300, defence: 8)
$knightsword=Sword.new(name: "Knight Sword" ,price: 400 , damage: 14)
$knightarmor=Armor.new(name: "Knight Armor" , price: 400, defence: 14)