//
//  Array + Extension.swift
//  Spar
//
//  Created by Роман Наумов on 16.08.2023.
//

import Foundation

extension String: Identifiable {
    public typealias ID = Int
    public var id: Int {
        return hash
    }
}
