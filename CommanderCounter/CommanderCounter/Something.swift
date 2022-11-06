//
//  something.swift
//  CommanderCounter
//
//  Created by Casey Utke on 10/24/22.
//

// CHANGE THE NAME OF THIS IN THE FUTURE. SOMETHING.SWIFT IS AN AWFUL NAME

import SwiftUI

struct Something: View {
    
    var flipped = false
    @State var lifeTotal = 40
    @State var cDamage1 = 0
    @State var cDamage2 = 0
    @State var cDamage3 = 0
    @State var activeCounter: ActiveCounter = .life
    
    var body: some View {
        VStack{
            // COMMANDER DAMAGE 1, COMMANDER DAMAGE 2
            HStack {
                Text(cDamage1.description)
                    .onTapGesture {
                        activeCounter = .command1
                    }
                Spacer()
                Text(cDamage2.description)
                    .onTapGesture {
                        activeCounter = .command2
                    }
            }
            Spacer()
            // LIFE TOTAL OR ACTIVE COUNTER
            VStack {
                Button("+", action: (addToCounter)).font(.largeTitle)
                // Check which active counter is active, pass object to ActiveCounterTotal.swift
                switch activeCounter {
                case .life:
                    ActiveCounterTotal(counterTotal: lifeTotal, activeCounter: activeCounter)
                case .command1:
                    ActiveCounterTotal(counterTotal: cDamage1, activeCounter: activeCounter)
                case .command2:
                    ActiveCounterTotal(counterTotal: cDamage2, activeCounter: activeCounter)
                case .command3:
                    ActiveCounterTotal(counterTotal: cDamage3, activeCounter: activeCounter)
                }
                
                Button("-", action: removeFromCounter).font(.largeTitle)
            }
            Spacer()
            
            // COMMANDER DAMAGE 3 OR LIFE TOTAL TEMP PLACE
            // Need to figure out how to pass through if a view is flipped or not
            HStack {
                Text(lifeTotal.description).font(.largeTitle)
                    .onTapGesture {
                        activeCounter = .life
                    }
                Spacer()
                Text("14")
            }
        }
    }
    func addToCounter() {
        if (activeCounter == .life) {
            lifeTotal += 1
        } else if (activeCounter == .command1) {
            cDamage1 += 1
            lifeTotal -= 1
        } else if (activeCounter == .command2) {
            cDamage2 += 1
            lifeTotal -= 1
        } else if (activeCounter == .command3) {
            cDamage3 += 1
            lifeTotal -= 1
        }
    }
    func removeFromCounter() {
        if (activeCounter == .life) {
            lifeTotal -= 1
        } else if (activeCounter == .command1) {
            cDamage1 -= 1
            lifeTotal += 1
        } else if (activeCounter == .command2) {
            cDamage2 -= 1
            lifeTotal += 1
        } else if (activeCounter == .command3) {
            cDamage3 -= 1
            lifeTotal += 1
        }
    }
    
    struct something_Previews: PreviewProvider {
        static var previews: some View {
            Something()
        }
    }
}
