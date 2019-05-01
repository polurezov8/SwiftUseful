//
//  Bundle+Extension.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import Foundation

extension Bundle {
    var appName: String? {
        return infoDictionary?["CFBundleDisplayName"] as? String
    }

    var bundleId: String? {
        return bundleIdentifier
    }

    var versionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }

    var buildNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
