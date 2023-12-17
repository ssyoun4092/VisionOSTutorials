//
//  visionDiceApp.swift
//  visionDice
//
//  Created by SeYeongYoon on 12/17/23.
//

import SwiftUI

@Observable
class DiceData {
    var rolledNumber = 0
}

@main
struct visionDiceApp: App {
    @State var diceData = DiceData()
    
    var body: some Scene {
        WindowGroup {
            ContentView(diceData: diceData)
        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView(diceData: diceData)
        }
    }
}
