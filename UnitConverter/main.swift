//
//  main.swift
//  UnitConverter
//
//  Created by delma on 16/12/2019.
//  Copyright © 2019 delma. All rights reserved.
//

import Foundation


//입력값 공백 유무 확인
func startConvert(){
   let inputValue = readLine()
    if inputValue!.contains(" "){
        setStart(inputValue: inputValue!)
    }else{
        checkStartUnit(startUnit: inputValue!)
    }
           
}

//공백 존재시 시작유닛, 타겟 유닛 설정
func setStart(inputValue: String){
    let targets = inputValue.split(separator: " ")
    let startUnit = String(targets[0])
    let targetUnit = String(targets[1])
        
    if startUnit.contains("cm"), targetUnit.contains("inch"){
        centiToInch(startUnit: startUnit)
    }else if startUnit.contains("m"), targetUnit.contains("inch"){
        centiToInch(startUnit: meterToCenti(startUnit: startUnit))
    }else if startUnit.contains("inch"), targetUnit.contains("m"){
        centiToMeter(startUnit: inchToCenti(startUnit: startUnit))
    }else{
        checkStartUnit(startUnit: startUnit)
    }
    
}

//시작유닛 확인
func checkStartUnit(startUnit: String){
    if startUnit.contains("cm"){
        centiToMeter(startUnit: startUnit)
    }else if startUnit.contains("m"){
       meterToCenti(startUnit: startUnit)
    }else if startUnit.contains("inch"){
        inchToCenti(startUnit: startUnit)
    }else{
        print("지원하지 않는 단위입니다. 다시 입력해주세요")
        startConvert()
    }
}

func centiToMeter(startUnit: String){
    let end = startUnit.index(startUnit.endIndex, offsetBy: -2)
    let range = startUnit.startIndex..<end
    var newUnit = Double(startUnit[range])
    newUnit = newUnit! / 100
    print("\(newUnit!)m")
}

func meterToCenti(startUnit: String) -> String{
    let end = startUnit.index(startUnit.endIndex, offsetBy: -1)
    let range = startUnit.startIndex..<end
    var newUnit = Double(startUnit[range])
    newUnit = newUnit! * 100
    print("\(newUnit!)cm")
    return "\(newUnit!)"
}

func inchToCenti(startUnit: String) -> String{
   let end = startUnit.index(startUnit.endIndex, offsetBy: -4)
   let range = startUnit.startIndex..<end
   var newUnit = Double(startUnit[range])
   newUnit = newUnit! * 2.54
   print("\(newUnit!)cm")
    return "\(newUnit!)"
}

func centiToInch(startUnit: String){
   let end = startUnit.index(startUnit.endIndex, offsetBy: -2)
   let range = startUnit.startIndex..<end
   var newUnit = Double(startUnit[range])
   newUnit = newUnit! / 2.54
   print("\(newUnit!)inch")
}

startConvert()
