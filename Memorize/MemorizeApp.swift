//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Koji Osugi on 24/03/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let memoryGame = EmojiMemoryGameViewModel()
            EmojiMemoryGameView(viewModel: memoryGame)
        }
    }
}
