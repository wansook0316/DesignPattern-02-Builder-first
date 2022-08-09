//
//  main.swift
//  Builder-01
//
//  Created by Choiwansik on 2022/08/09.
//

import Foundation

internal func main() {
    // initializer를 사용해서 처리하기
    let car1 = Car(brandName: "Ford Mustang",
                  engine: "V8",
                  airbag: true,
                  color: "red",
                  isSelfDrivingAvailable: false,
                  isSexy: false)
    print(car1.description)
    
    // Builder를 사용해서 처리하기
    let car2 = CarBuilder()
        .brandName("Tesla")
        .engine("Electric motor")
        .airbag(true)
        .color("black")
        .isSelfDrivingAvailable(true)
        .isSexy(false)
        .build()
    
    print(car2.description)
}

main()
