//
//  SportCar.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 30.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
class SportCar: Car {
    
    let brand: String
    let productionYear: Int
    let speed: Int
    var window: Bool = false
    var engine: Bool = false
    var foldingRoof: Bool
    
    init(brand: String, productionYear: Int, speed: Int, foldingRoof: Bool) {
        self.brand = brand
        self.productionYear = productionYear
        self.foldingRoof = foldingRoof
        self.speed = speed
    }
    
    func openRoof() {
        if foldingRoof == false {
            foldingRoof = true
            print("Крыша вашего \(brand) открыта.")
        }
    }
}
