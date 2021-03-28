//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Koji Osugi on 25/03/21.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻", "🤠", "😇", "🤣", "🤓"]
        return MemoryGame<String>(numberOfPairsOfCards: (2...emojis.count).randomElement()!) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func cardsSize() -> Int {
        model.cards.count
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
