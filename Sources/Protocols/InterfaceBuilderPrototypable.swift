//
//  InterfaceBuilderPrototypable.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

protocol InterfaceBuilderPrototypable {
    static var nib: UINib { get }
}

extension InterfaceBuilderPrototypable {
    static var nib: UINib {
        return UINib(nibName: String(describing: Self.self), bundle: nil)
    }
}
