//
//  String+Localized.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
