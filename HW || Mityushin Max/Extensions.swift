//
//  Extensions.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 30.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

//MARK: Car Extension

//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
extension Car {
    
    // Описание функций
    private func changeStateAtFalse(for detail: Bool, name: String, stateDescription: String) {
        if detail == true {
            print("\(name) \(brand) \(stateDescription).")
        } else {
            print("\(name) \(brand) \(stateDescription).")
        }
    }
    
    private func changeStateAtTrue(for detail: Bool, name: String, stateDescription: String) {
        if window == false {
             print("\(name) \(brand) \(stateDescription).")
        } else {
            print("\(name) \(brand) \(stateDescription).")
        }
    }
    
    // Вызов функций
    mutating func startEngine() {
        changeStateAtTrue(for: engine, name: "Двигатель", stateDescription: "заведён")
        engine = true
    }
    
    mutating func stopEngine() {
        changeStateAtFalse(for: engine, name: "Двигатель", stateDescription: "заглушен")
        engine = false
    }
    
    mutating func openWindow() {
        changeStateAtTrue(for: window, name: "Окно", stateDescription: "открыто")
        window = true
    }
    
    mutating func closeWindow() {
        changeStateAtFalse(for: window, name: "Окно", stateDescription: "закрыто")
        window = false
    }
}

// MARK: CustomStringConvertible
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
extension SportCar: CustomStringConvertible {
    var description: String {
        return "You have a great car \(brand) with speed \(speed) Km/h"
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "WOW! \(brand) - that's a huge trunk car"
    }
}
