//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

print("Hello, World!")

protocol Car {
    var brand: String { get }
    var productionYear: Int { get }
}

class SportCar: Car {
    var brand: String
    var productionYear: Int
    
    init(brand: String, productionYear: Int) {
        self.brand = brand
        self.productionYear = productionYear
    }
}

class TrunkCar: Car {
    var brand: String
    var productionYear: Int
    
    init(brand: String, productionYear: Int) {
        self.brand = brand
        self.productionYear = productionYear
    }
}

struct Queue<T> {
    private var elements: [T] = []
    
    mutating func push(newCar: T) {
        elements.append(newCar)
    }
    
    mutating func pop() -> T? {
        guard !elements.isEmpty else { return nil }
        return elements.removeFirst()
    }
}



