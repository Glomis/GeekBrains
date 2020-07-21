//
//  main.swift
//  HW || Mityushin Max
//
//  Created by Tatyana on 21.07.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import Foundation

// Создать структуру

enum PartState {
    case open, closed
}
struct Car {
    
    
    let mark: String
    let yer: Int
    let trunkVolume: Int
    let engineState: PartState
    let windowState: PartState
    let filledTrunkVolume: Int
}


