//
//  main.swift
//  UnitConverter
//
//  Created by delma on 16/12/2019.
//  Copyright © 2019 delma. All rights reserved.
//

import Foundation


func convertToMeter(centi: Double) {
    let meter = centi / 100
    print("\(meter)m")
}

func converToCenti(meter: Double) {
    let centi = Int(meter * 100)
    print("\(centi)cm")
}

convertToMeter(centi: 120)
converToCenti(meter: 1.86)

func convert(unit: String){
    if unit.contains("cm"){
       let end = unit.index(unit.endIndex, offsetBy: -2)
        let range = unit.startIndex..<end
        var newUnit = Double(unit[range])
        newUnit = newUnit! / 100
        print("\(newUnit!)m")
    }else if unit.contains("m"){
       let end = unit.index(unit.endIndex, offsetBy: -1)
        let range = unit.startIndex..<end
        var newUnit = Double(unit[range])
        newUnit = newUnit! * 100
        print("\(newUnit!)cm")
    }
    
}
convert(unit: "183cm")
convert(unit: "3.14m")
