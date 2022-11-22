//
//  App_MemorizerApp.swift
//  App-Memorizer
//
//  Created by Geiziane alexandre on 15/11/22.
//

import SwiftUI

@main
struct App_MemorizerApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            ContentView(viewModel: game)
        }
    }
}
