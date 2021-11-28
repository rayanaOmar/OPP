import UIKit

struct Card{
    var Color: String
    var rollValue: Int
}

//Deck class
class Deck{
    var cards: [Card] = []
    init(card:[Card]){
        self.cards = card
        for i in 0...2{
            for _ in 0...9{
                if i == 0{
                    cards.append(Card(Color: "Red", rollValue: Int.random(in: 3...4)))
                }else if i == 1{
                    cards.append(Card(Color: "Green", rollValue: Int.random(in: 4...6)))
                }else{ // i == 2
                    cards.append(Card(Color: "Blue", rollValue: Int.random(in: 1...2)))
                }
            }
        }
    }
        //function section
        
        //remove from top
        func remove(){
            cards.removeLast()
        }
        
        //check is empty or not
        func isEmpty() -> Bool{
            if(cards.count > 0){
                return false
            }else{
                return true
            }
        }
        
        //shuffle function
        func shuffleCard(){
            cards.shuffle()
        }
        
        //print for deck class
        func printDeck(){
            for(_ , value) in cards.enumerated(){
                print("Card Color: \(value.Color) Roll Value: \(value.Color)")
            }
        }
 }// end of deck class

    
    //class player
    class Player{
        var name: String = ""
        var hand: [Card] = []
        
        init(name: String, hand: [Card]){
            self.hand = hand
            self.name = name
        
            print("Player Name: \(name)")
        }
        
        //function section
        
        //draw function
        func draw(deck: Deck) -> Card{
            let draw = deck.cards[Int.random(in: 1...30)]
            hand.append(draw)
            return draw
        }
        
        //roll a dic function
        func rollDic() -> Int{
            return Int.random(in: 1...6)
        }
        
        //find the matching function
        func matchCards(color m: String, value v: Int) -> Int{
            var count: Int = 0
            for(_, value) in hand.enumerated(){
                if(value.Color == m && value.rollValue == v){
                    count = count + 1
                }
                print(value)
            }
            return count
        }
}//end of player class
    
//main section
var card  = Card(Color: "Green", rollValue: 4)
var deck = Deck(card: [card])

deck.shuffleCard()
deck.remove()
deck.printDeck()

var player = Player(name: "rayana", hand: [card])

player.draw(deck: deck)
player.draw(deck: deck)
player.draw(deck: deck)
player.draw(deck: deck)
player.draw(deck: deck)

player.rollDic()

//print the matching cards
var match = player.matchCards(color: "Red", value: 4)
print("The Number Of Matching Cards is: \(match)")








