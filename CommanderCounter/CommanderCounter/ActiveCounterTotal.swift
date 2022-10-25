//
//  ActiveCounterTotal.swift
//  CommanderCounter
//
//  Created by Casey Utke on 10/24/22.
//

import SwiftUI

struct ActiveCounterTotal: View {
    // Pased in objects
    var counterTotal: Int
    @State var activeCounter: ActiveCounter
    
    // When active counter is tapped, go back to life counter
    var body: some View {
        Text(counterTotal.description).font(.largeTitle)
            .onTapGesture {
                activeCounter = .life
            }
    }
}

struct ActiveCounterTotal_Previews: PreviewProvider {
    static var previews: some View {
        ActiveCounterTotal(counterTotal: 40, activeCounter: ActiveCounter.life)
    }
}
