//
//  something.swift
//  CommanderCounter
//
//  Created by Casey Utke on 10/24/22.
//

import SwiftUI

struct Something: View {
    
    @State var lifeTotal = 40
    @State var cDamage1 = 0
    @State var cDamage2 = 0
    @State var cDamage3 = 0
    @State var activeCounter: ActiveCounter = .life
    
    var body: some View {
        VStack{
            HStack {
                Text(cDamage1.description)
                    .onTapGesture {
                        activeCounter = .command1
                    }
                Spacer()
                Text("14")
            }
            Spacer()
            VStack {
                Button("+", action: (addLife)).font(.largeTitle)
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
                
                Button("-", action: removeLife).font(.largeTitle)
            }
            Spacer()
            HStack {
                Text("12")
                Spacer()
                Text("14")
            }
        }
    }
    func addLife() {
        lifeTotal += 1
    }
    func removeLife() {
        lifeTotal -= 1
    }
    func addCDamage() {
        
    }
    func removeCDamage() {
        
    }
    
}

struct something_Previews: PreviewProvider {
    static var previews: some View {
        Something()
    }
}
