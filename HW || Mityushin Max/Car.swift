//
//  Car.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 27.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.

enum PartState {case closeWindow, openWindow, startEngine, stopEngine,
    turboOn, turboOff, openRoof, closeRoof,
    awdOn, awdOff}

// Первоначальный класс - Машина
class Car {
    let brand: String
    private let yearOfProduction: Int
    private var engineState: PartState
    private var windowState: PartState
    
    init(brand: String, productionYear: Int,
         engineState: PartState, windowState: PartState) {
        self.brand = brand
        yearOfProduction = productionYear
        self.engineState = engineState
        self.windowState = windowState
    }
    
    func changeState(actions: PartState) {
        switch actions {
        case .closeWindow:
            print("Окно \(brand) закрыто.")
        case .openWindow:
            print("Окно \(brand) открыто.")
        case .startEngine:
            print("Двигатель \(brand) заведён.")
        case .stopEngine:
            print("Двигатель \(brand) заглушен.")
        default:
            break
        }
    }
    
}
