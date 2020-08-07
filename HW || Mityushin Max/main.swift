//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

//MARK: Protocols
protocol Car: CustomStringConvertible {
    var brand: String { get }
    var productionYear: Int { get }
}



protocol Payfull {
    var deposit: Double { get set }
    var car: Car { get }
    
    func spendMoney(spend: Double)
}


//MARK: Enums
enum PaintError: LocalizedError {
    case noMoney
    case oldCar
    case unownError
    
    
    var errorDescription: String? {
        switch self {
        case .noMoney:
           return "dd"
        case .oldCar:
           return "wdsc"
        case .unownError:
           return "cw"
        }
    }
}

enum Result<T, E> {
    case success(T)
    case failuer(E)
}


//MARK: Classes
class ErrorHandler {
    func handle(error: Error) {
        print(error.localizedDescription)
    }
}

class SportCar: Car {
    var brand: String
    var productionYear: Int
    
    init(brand: String, productionYear: Int) {
        self.brand = brand
        self.productionYear = productionYear
    }
    
    var description: String {
        return "\(brand) of \(productionYear)"
    }
}

class TrunkCar: Car {
    var brand: String
    var productionYear: Int
    
    
    init(brand: String, productionYear: Int) {
        self.brand = brand
        self.productionYear = productionYear
    }
    
    var description: String {
        return "\(brand) of \(productionYear)"
    }
}

class Client: CustomStringConvertible, Payfull {
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
    internal func spendMoney(spend: Double) {
        deposit -= spend
    }
}

struct Queue<T: Payfull>: CustomStringConvertible {
    
     var elements: [T] = []
    
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
    
   private func priceOfPaint(client: T) -> Double {
        var paintPrice = 0.0
        if client.car.productionYear < 2015 {
            paintPrice = 5000.00
        } else if client.car.productionYear < 2000 {
            paintPrice = 20000.00
            print("Sorry, your car is very old.")
        } else {
            paintPrice = 10000.00
        }
        return paintPrice
    }
    
    mutating func paint() -> Result<[T], PaintError> {
        var temp: [T] = []
        
        for car in elements {
            let price = priceOfPaint(client: car)
            if price > car.deposit {
                return Result.failuer(.noMoney)
            } else {
                car.spendMoney(spend: price)
                temp.append(car)
            }
        }
        return Result.success(temp)
    }
}


//MARK: Realisation
let carOne = SportCar(brand: "BMW", productionYear: 2020)
let carTwo = TrunkCar(brand: "Truck", productionYear: 1990)

var queue = Queue<Client>()

let ivan = Client(name: "Ivan", car: carOne, deposit: 10000)
let petr = Client(name: "Petr", car: carTwo, deposit: 2000)

queue.enqeue(newCar: ivan)
queue.enqeue(newCar: petr)

let paintQueue = queue.paint()

print(queue)

print(paintQueue)
