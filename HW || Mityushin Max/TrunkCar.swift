//
//  TrunkCar.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 27.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
// Наследуемый класс - Грузовая машина

class TrunkCar: Car {
    private var awd: PartState
    
    override init(brand: String, productionYear: Int, engineState: PartState = .stopEngine,
                  windowState: PartState) {
        self.awd = .awdOff
        
        super.init(brand: brand, productionYear: productionYear,
                   engineState: engineState, windowState: windowState)
    }
    
    override func changeState(actions: PartState) {
        
        super.changeState(actions: actions)
        switch actions {
        case .awdOn:
            print("Полный привод \(brand) включён.")
        case .awdOff:
            print("Полный привод \(brand) выключен.")
        default: break
        }
    }
}
