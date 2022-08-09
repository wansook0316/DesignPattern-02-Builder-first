//
//  CarBuilder.swift
//  Builder-01
//
//  Created by Choiwansik on 2022/08/09.
//

import Foundation

// struct로 한것에 큰 의미 없음
internal struct CarBuilder {
    
    internal mutating func brandName(_ brandName: String) -> Self {
        self.brandName = brandName
        return self
    }
    
    internal mutating func engine(_ engine: String) -> Self {
        self.engine = engine
        return self
    }
    
    internal mutating func airbag(_ airbag: String) -> Self {
        self.airbag = airbag
        return self
    }
    
    internal mutating func color(_ color: String) -> Self {
        self.color = color
        return self
    }
    
    internal mutating func isSelfDrivingAvailable(_ isSelfDrivingAvailable: Bool) -> Self {
        self.isSelfDrivingAvailable = isSelfDrivingAvailable
        return self
    }
    
    internal mutating func isSexy(_ isSexy: Bool) -> Self {
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
    private var engine: String
    private var airbag: String = ""
    private var color: String
    private var isSelfDrivingAvailable: Bool
    private var isSexy: Bool
}
