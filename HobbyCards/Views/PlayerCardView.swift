//
//  PlayerCardView.swift
//  HobbyCards
//
//  Created by Thomas Noone on 2024-12-17.
//

import SwiftUI

struct PlayerCardView: View {
    
    let chosenPlayer: Player
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack(alignment: .topLeading) {
                Image(chosenPlayer.playerImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 233)
                    .background(Color.white)
                    .border(Color.black, width: 3)
                    .clipped()
                
                ZStack {
                    XShape()
                        .fill(Color.red)
                    XShape()
                        .stroke(Color.black, lineWidth: 5)
                    Image(systemName: "globe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.black)
                }
                .frame(width: 100, height: 100)
                .offset(x: -25, y: -25)
            }
            Spacer()
        }
    }
}

#Preview {
    NavigationStack {
        PlayerCardView(chosenPlayer: DustyHenrickson)
    }
}
