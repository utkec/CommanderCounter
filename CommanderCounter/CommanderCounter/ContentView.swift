//
//  ContentView.swift
//  CommanderCounter
//
//  Created by Casey Utke on 10/24/22.
//
 
import SwiftUI

struct ContentView: View {
    // TO DO: Change the name of Something()
    var body: some View {
        VStack {
            HStack {
                Something().rotationEffect(.degrees(180))
                Something().rotationEffect(.degrees(180))
            }
            HStack {
                Something()
                Something()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
