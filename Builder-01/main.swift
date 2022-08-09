//
//  main.swift
//  Builder-01
//
//  Created by Choiwansik on 2022/08/09.
//

import Foundation

internal func main() {
    Car와CarBuilder호출방식차이확인하기()
    CarBuilder가재사용에용이한이유알아보기()
}

internal func Car와CarBuilder호출방식차이확인하기() {
    print("+++ Car와 CarBuilder 호출방식 차이 확인하기 +++")
    
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

internal func CarBuilder가재사용에용이한이유알아보기() {
    print("+++ CarBuilder가 재사용에 용이한 이유 알아보기 +++")
    
    let teslaDefault = CarBuilder()
        // .brandName("Tesla")
        .engine("Electric motor")
        .airbag(true)
        .color("black")
        .isSelfDrivingAvailable(true)
        .isSexy(false)
    
    let modelS = teslaDefault
        .brandName("model S")
        .build()
    
    let model3 = teslaDefault
        .brandName("model 3")
        .build()
    
    let modelX = teslaDefault
        .brandName("model X")
        .build()
    
    let modelY = teslaDefault
        .brandName("model Y")
        .build()
    
    print(modelS.description)
    print(model3.description)
    print(modelX.description)
    print(modelY.description)
}

main()
