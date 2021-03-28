//
//  Array+Only.swift
//  Memorize
//
//  Created by Koji Osugi on 27/03/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
