//
//  Car.swift
//  Builder-01
//
//  Created by Choiwansik on 2022/08/09.
//

import Foundation

internal struct Car {
    
    internal let brandName: String
    internal let engine: String
    internal let airbag: Bool
    internal let color: String
    internal let isSelfDrivingAvailable: Bool
    internal let isSexy: Bool
    
    internal var description: String {
        """
        Car Spec
        brandName: \(brandName)
        engine: \(engine)
        airbag: \(airbag)
        color: \(color)
        isSelfDrivingAvailable: \(isSelfDrivingAvailable)
        isSexy: \(isSexy)
        """
    }

}
