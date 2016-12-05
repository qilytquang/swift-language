//: Playground - noun: a place where people can play
//: Create full desk of cards

import UIKit

enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

enum Suit {
    case spades, hearts, diamonds, clubs
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    func createFullDeckOfCards() -> [Card] {
        var listCards = [Card]()
        for rawValueOfRank in 1..<14 {
            if let rankCard = Rank(rawValue: rawValueOfRank) {
                let cardSpades = Card(rank: rankCard, suit: .spades)
                let cardHearts = Card(rank:rankCard, suit: .hearts)
                let cardDiamonds = Card(rank: rankCard, suit: .diamonds)
                let cardClubs = Card(rank: rankCard, suit: .clubs)
                
                listCards.append(cardSpades)
                listCards.append(cardHearts)
                listCards.append(cardDiamonds)
                listCards.append(cardClubs)
            }
        }
        return listCards
    }
}

var card = Card(rank: .ace, suit: .spades)
var listCards = card.createFullDeckOfCards()
for card in listCards {
    print(card.simpleDescription())
}