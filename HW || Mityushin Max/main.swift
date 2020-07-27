//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

print("Hello, World!")

// Инициализируем Машины

let ferrari = SportCar(brand: "Ferrari", productionYear: 2020)

ferrari.changeState(actions: .startEngine)
ferrari.changeState(actions: .openRoof)

let uaz = TrunkCar(brand: "UAZ", productionYear: 2005, engineState: .closeWindow, windowState: .closeWindow)

uaz.changeState(actions: .startEngine)
uaz.changeState(actions: .awdOn)
