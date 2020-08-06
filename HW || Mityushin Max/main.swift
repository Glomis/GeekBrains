//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation


protocol Car: CustomStringConvertible {
    var brand: String { get }
    var productionYear: Int { get }
}


class SportCar: Car {
    
    var brand: String
    var productionYear: Int
    var deposit: Double
    
        self.brand = brand
        self.productionYear = productionYear
        self.deposit = deposit
    }
    
    var description: String {
        return "\(brand) of \(productionYear)"
    }
}


class TrunkCar: Car {
    
    var brand: String
    var productionYear: Int
    var deposit: Double
    
    init(brand: String, productionYear: Int, deposit: Double) {
        self.brand = brand
        self.productionYear = productionYear
        self.deposit = deposit
    }
    
    var description: String {
        return "\(brand) of \(productionYear)"
    }
}

class Client: CustomStringConvertible {
    
    var name: String
    var deposit: Double
    var car: Car
    
    init(name: String, car: Car, deposit: Double) {
        self.name = name
        self.car = car
        self.deposit = deposit
    }
    
    var description: String {
        return "\(name) on \(car), deposit: \(deposit)"
    }
}

struct Queue<T>: CustomStringConvertible {
    
    private var elements: [T] = []
    
    var description: String {
        return "Clients:\n\(elements)"
    }
    
    mutating func enqeue(newCar: T...) {
        elements.append(contentsOf: newCar)
    }
    
    mutating func deqeue() -> T? {
        guard !elements.isEmpty else { return nil }
        let client = elements.removeFirst()
        
        return client
    }
    
    mutating func paint(clients: [T]) -> [T] {
        var temp: [T] = []
        
        return temp
    }

    
}


let carOne = SportCar(brand: "BMW", productionYear: 2020, deposit: 500)
let carTwo = TrunkCar(brand: "Truck", productionYear: 2005, deposit: 400)

var queue = Queue<Client>()

let ivan = Client(name: "Ivan", car: carOne, deposit: 1000)
let petr = Client(name: "Petr", car: carTwo, deposit: 500)

queue.enqeue(newCar: ivan)
queue.enqeue(newCar: petr)


print(queue)

