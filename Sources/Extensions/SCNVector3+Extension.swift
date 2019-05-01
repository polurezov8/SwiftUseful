//
//  SCNVector3+Extension.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import ARKit

extension SCNVector3 {
    static func +(lhv: SCNVector3, rhv: SCNVector3) -> SCNVector3 {
        return SCNVector3(lhv.x + rhv.x, lhv.y + rhv.y, lhv.z + rhv.z)
    }

    static func -(lhv: SCNVector3, rhv: SCNVector3) -> SCNVector3 {
        return SCNVector3(lhv.x - rhv.x, lhv.y - rhv.y, lhv.z - rhv.z)
    }
}
