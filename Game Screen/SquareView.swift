//
//  SquareView.swift
//  XsandOs
//
//  Created by Rosamond Patricia Selamat Lie on 23/03/26.
//

import SwiftUI

struct SquareView: View {
    @EnvironmentObject var game: GameService
    let index: Int
    var body: some View {
        Button {
            if !game.isThinking {
                game.makeMove(at: index)
            }
        } label: {
            game.gameBoard[index].image
                .resizable()
                .frame(width: 100, height: 100)
        }
        .disabled(game.gameBoard[index].player != nil)
        .foregroundColor(.primary)
        
    }
}

#Preview {
    SquareView(index: 1)
        .environmentObject(GameService())
}
