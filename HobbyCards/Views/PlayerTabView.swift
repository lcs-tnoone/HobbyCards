//
//  PlayerTabView.swift
//  HobbyCards
//
//  Created by Thomas Noone on 2024-12-17.
//

import SwiftUI

struct PlayerTabView: View {
    
    var body: some View {
        TabView{
            ForEach(Snowboarders) {currentPlayer in PlayerCardView(chosenPlayer: currentPlayer)
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .never))
        .persistentSystemOverlays(.hidden)
    }
}

#Preview {
    PlayerTabView()
}
