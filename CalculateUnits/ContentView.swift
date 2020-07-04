//
//  ContentView.swift
//  CalculateUnits
//
//  Created by Harei Waja on 7/3/20.
//  Copyright © 2020 Rex Orioko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var InputUnit = ""
    @State private var OutputUnit = ""
    @State private var inputNumber = 2
    
    let possibleUnits = ["sec","min","hrs"]
    

    
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select Unit", selection: $InputUnit) {
                    ForEach(0 ..< possibleUnits.count){number in
                        Text("\(self.possibleUnits[number])")
                    }
                }
            }
        .navigationBarTitle("Unit Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
