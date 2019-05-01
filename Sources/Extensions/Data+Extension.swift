//
//  Data+Extension.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

extension Data {
    func printJSON() {
        do {
            guard let json = try JSONSerialization.jsonObject(with: self, options: []) as? [String: Any] else {
                print("Error while printing JSON")
                return
            }
            print(json)
        } catch {
            print(error)
        }
    }

    func printString() {
        print(String(data: self, encoding: .utf8) ?? "Failed to convert Data to String")
    }

    func toString() -> String {
        return String(data: self, encoding: .utf8) ?? "Failed to convert Data to String"
    }
}
