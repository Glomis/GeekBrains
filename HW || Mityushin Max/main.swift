//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation
1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

print("Hello, World!")
2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

5. Создать несколько объектов каждого класса. Применить к ним различные действия.

6. Вывести сами объекты в консоль.
*/

var sportCar = SportCar(brand: "BMW", productionYear: 2020, speed: 300, foldingRoof: false)

print(sportCar)
sportCar.startEngine()
sportCar.openRoof()


let trunkCar = TrunkCar(brand: "UAZ", productionYear: 2005)

print(trunkCar)

