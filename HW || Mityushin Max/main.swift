//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

// Создать структуру

// Возможные действия с автомобилем
enum PartState {
    case open, closed
    case startEngine, stopEngine, openWindow, closeWindow,
    loadVolume, uploadVolume
}

//MARK: Структура Спортивной машины
struct SportCar {
    let brand: String
    let yearOfProduction: Int
    var trunkVolume: Int
    var engineState: PartState = .stopEngine
    var windowState: PartState = .closeWindow
    var filledTrunkVolume: Int = 0
    
    
    private mutating func bizyVolume(bizy: Int) {
        trunkVolume -= bizy
        print("В багажник загружеено \(bizy)кг, свободного места осталось \(trunkVolume)кг")
    }
    
    private mutating func freeVolume(free: Int) {
        trunkVolume += free
        print("Из багажника выгружено \(free)кг, свободного места стало \(trunkVolume)кг")
    }
    
    mutating func changeState(action: PartState) {
        switch action {
        case .startEngine:
            engineState = .startEngine
            print("Двигатель автомобиля заведен - Wroom! -")
        case .stopEngine:
            self.engineState = .stopEngine
            print("Двигатель автомобиля заглушен - Brrr! -")
        case .openWindow:
            windowState = .openWindow
            print("Окно автомобиля открыто.")
        case .closeWindow:
            windowState = .closeWindow
            print("Окно автомобиля закрыто.")
        case .loadVolume:
            bizyVolume(bizy: 50)
        case .uploadVolume:
            freeVolume(free: 50)
        }
    }
}

struct Car {
    let mark: String
    let yer: Int
    let trunkVolume: Int
    let engineState: PartState
    let windowState: PartState
    let filledTrunkVolume: Int
//MARK: Структура Грузовика
struct TruckCar {
    let brand: String
    let yearOfProduction: Int
    var trunkVolume: Int
    let countOfWheels: Int
    var engineState: PartState = .stopEngine
    var windowState: PartState = .closeWindow
    var filledTrunkVolume: Int = 0
    
    
    private mutating func bizyVolume(bizy: Int) {
        trunkVolume -= bizy
        print("В кузов загружеено \(bizy)кг, свободного места осталось \(trunkVolume)кг")
    }
    
    private mutating func freeVolume(free: Int) {
        trunkVolume += free
        print("Из кузова выгружено \(free)кг, свободного места стало \(trunkVolume)кг")
    }
    
    mutating func changeState(action: PartState) {
        switch action {
        case .startEngine:
            engineState = .startEngine
            print("Двигатель грузовика заведен - BROOM! -")
        case .stopEngine:
            self.engineState = .stopEngine
            print("Двигатель грузовика заглушен - Pff-Pff-Pff! -")
        case .openWindow:
            windowState = .openWindow
            print("Окно грузовика открыто.")
        case .closeWindow:
            windowState = .closeWindow
            print("Окно грузовика закрыто.")
        case .loadVolume:
            bizyVolume(bizy: 100)
        case .uploadVolume:
            freeVolume(free: 100)
        }
    }
}

//MARK: Инициализация Автомобилей
var audi = SportCar(brand: "Audi", yearOfProduction: 2017, trunkVolume: 450)

audi.changeState(action: .startEngine)
audi.changeState(action: .openWindow)
audi.changeState(action: .loadVolume)
audi.changeState(action: .uploadVolume)

var uaz = TruckCar(brand: "УАЗ", yearOfProduction: 2005, trunkVolume: 5000, countOfWheels: 6)

uaz.changeState(action: .startEngine)
uaz.changeState(action: .stopEngine)
uaz.changeState(action: .loadVolume)
