//
//  TrunkCar.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 30.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
class TrunkCar: Car {
    
    let brand: String
    let productionYear: Int
    var window: Bool = false
    var engine: Bool = false

    init(brand: String, productionYear: Int) {
        self.brand = brand
        self.productionYear = productionYear
    }
}
