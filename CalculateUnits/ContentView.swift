//
//  ContentView.swift
//  CalculateUnits
//
//  Created by Harei Waja on 7/3/20.
//  Copyright © 2020 Rex Orioko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var inputUnit = 1
    @State private var inputNumber = ""
    
    let possibleUnits = ["sec","min","hrs"]
    
    //Grab state value index number of array and return string in array
    var viewInputUnit: String  {
        let enteredUnit = inputUnit
        let text = possibleUnits[enteredUnit]
        return text
    }

    var result: Double {
        var baseUnit = Double(inputNumber) ?? 0
        if viewInputUnit == "min" {
            baseUnit = baseUnit / 60
        } else if viewInputUnit == "hrs" {
            baseUnit = baseUnit / 3600
        }else if viewInputUnit == "sec" {
            baseUnit = baseUnit / 0
        }
        return baseUnit
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
//                    Picker("Convert To", selection: $outputUnit) {
//                        ForEach(0 ..< possibleUnits.count){number in
//                            Text("\(self.possibleUnits[number])")
//                        }
//                    }
                }
                Section(header: Text("Enter Seconds")) {
                    TextField("In Seconds Please", text: $inputNumber)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Result")) {
                    Text("\(result) \(viewInputUnit)")
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
