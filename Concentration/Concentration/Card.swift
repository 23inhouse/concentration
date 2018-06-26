//
//  Card.swift
//  Concentration
//
//  Created by Benjamin Lewis on 23/6/18.
//  Copyright © 2018 Benjamin Lewis. All rights reserved.
//

import Foundation

struct Card {

    var isFaceUp = false
    var isMatched = false
    var identifier: Int

    static var identiferFactory = 0

    static func getUniqueIdentifier() -> Int {
        identiferFactory += 1
        return identiferFactory
    }

    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
