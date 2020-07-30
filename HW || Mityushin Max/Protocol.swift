//
//  Car.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 30.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
protocol Car {
    var brand: String { get }
    var productionYear: Int { get }
    var window: Bool { get set }
    var engine: Bool { get set }
}
