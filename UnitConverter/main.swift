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
