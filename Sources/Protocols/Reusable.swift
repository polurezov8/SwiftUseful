//
//  Reusable.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

protocol Reusable {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
