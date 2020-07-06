//
//  ContentView.swift
//  CalculateUnits
//
//  Created by Harei Waja on 7/3/20.
//  Copyright © 2020 Rex Orioko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    @State private var inputNumber = ""
    
    let possibleUnits = ["sec","min","hrs"]
    
    //Grab state value index number of array and return string in array
    var viewInputUnit:String  {
        let enteredUnit = inputUnit
        let text = possibleUnits[enteredUnit]
        return text
    }
    var viewOutputUnit:String  {
        let enteredUnit = outputUnit
        let text = possibleUnits[enteredUnit]
        return text
    }

    
    
    
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Select Unit", selection: $inputUnit) {
                        ForEach(0 ..< possibleUnits.count){number in
                            Text("\(self.possibleUnits[number])")
                        }
                    }
                    Picker("Convert To", selection: $outputUnit) {
                        ForEach(0 ..< possibleUnits.count){number in
                            Text("\(self.possibleUnits[number])")
                        }
                    }
                }
                Section(header: Text("Enter The Number")) {
                    TextField("Here", text: $inputNumber)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Result")) {
                    Text("$\(viewInputUnit) : \(viewOutputUnit)")
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
