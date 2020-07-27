//
//  SportCar.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 27.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.

// Наследуемый класс - Спортивная машина
class SportCar: Car {
    private var turbo: PartState
    private var foldingRoof: PartState
    
    
    init(brand: String, productionYear: Int,
         engineState: PartState = .stopEngine, windowState: PartState = .closeWindow,
         turbo: PartState = .turboOff, foldingRoof: PartState = .closeRoof) {
        self.turbo = turbo
        self.foldingRoof = foldingRoof
        
        super.init(brand: brand, productionYear: productionYear, engineState: engineState, windowState: windowState)
    }
    
    override func changeState(actions: PartState) {
        
        super.changeState(actions: actions)
        
        switch actions {
        case .openRoof:
            print("Крыша \(brand) открыта.")
        case . closeRoof:
            print("Крыша \(brand) закрыта.")
        default:
            break
        }
    }
    
}
