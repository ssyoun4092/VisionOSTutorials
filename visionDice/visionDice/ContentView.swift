//
//  ContentView.swift
//  visionDice
//
//  Created by SeYeongYoon on 12/17/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var diceData: DiceData

    var body: some View {
        VStack {
            Text(diceData.rolledNumber == 0 ? "🎲" : "\(diceData.rolledNumber)")
                .foregroundStyle(.yellow)
                .font(.custom("Menlo", size: 100))
                .bold()
        }
        .padding()
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
    }
}

#Preview {
    ContentView(diceData: DiceData())
}
