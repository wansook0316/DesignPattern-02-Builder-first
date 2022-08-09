//
//  CarBuilder.swift
//  Builder-01
//
//  Created by Choiwansik on 2022/08/09.
//

import Foundation

internal class CarBuilder {

    internal func brandName(_ brandName: String) -> Self {
        self.brandName = brandName
        return self
    }
    
    internal func engine(_ engine: String) -> Self {
        self.engine = engine
        return self
    }
    
    internal func airbag(_ airbag: Bool) -> Self {
        self.airbag = airbag
        return self
    }
    
    internal func color(_ color: String) -> Self {
        self.color = color
        return self
    }
    
    internal func isSelfDrivingAvailable(_ isSelfDrivingAvailable: Bool) -> Self {
        self.isSelfDrivingAvailable = isSelfDrivingAvailable
        return self
    }
    
    internal func isSexy(_ isSexy: Bool) -> Self {
        self.isSexy = isSexy
        return self
    }
    
    internal func build() -> Car {
        return Car(brandName: self.brandName,
                   engine: self.engine,
                   airbag: self.airbag,
                   color: self.color,
                   isSelfDrivingAvailable: self.isSelfDrivingAvailable,
                   isSexy: self.isSexy)
    }
    
    // Car instance를 생성하기 위해 필요한 Properties
    private var brandName: String = ""
    private var engine: String = ""
    private var airbag: Bool = false
    private var color: String = ""
    private var isSelfDrivingAvailable: Bool = false
    private var isSexy: Bool = false
}
