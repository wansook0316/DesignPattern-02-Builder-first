//
//  Car.swift
//  Builder-01
//
//  Created by Choiwansik on 2022/08/09.
//

import Foundation

internal struct Car {
    internal func describe() -> String {
        return """
        Car Spec
        brandName: \(brandName)
        engine: \(engine)
        airbag: \(airbag)
        color: \(color)
        isSelfDrivingAvailable: \(isSelfDrivingAvailable)
        isSexy: \(isSexy)
        """
    }
    
    private var brandName: String
    private var engine: String
    private var airbag: String
    private var color: String
    private var isSelfDrivingAvailable: Bool
    private var isSexy: Bool
}
