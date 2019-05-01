//
//  GradientView.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    // MARK: - Properties
    var gradientLayer: CAGradientLayer? {
        return layer as? CAGradientLayer
    }

    // MARK: Calculated properties
    @IBInspectable var topGradient: UIColor = .topDarkBlueGradientColor {
        didSet {
            updateColors()
        }
    }

    @IBInspectable var bottomGradient: UIColor = .bottomBlueGradientColor {
        didSet {
            updateColors()
        }
    }

    @IBInspectable var startLocation: Double = .startGradientLocation {
        didSet {
            updateLocations()
        }
    }
    
    @IBInspectable var endLocation: Double = .endGradientLocation {
        didSet {
            updateLocations()
        }
    }

    @IBInspectable var startPoint: CGPoint = CGPoint.gradientLayerStartPoint {
        didSet {
            updatePoints()
        }
    }

    @IBInspectable var endPoint: CGPoint = CGPoint.gradientLayerEndPoint {
        didSet {
            updatePoints()
        }
    }

    // MARK: - Ovverride
    override func layoutSubviews() {
        super.layoutSubviews()

        updatePoints()
        updateLocations()
        updateColors()
    }

    override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }

    // MARK: - Private methods
    private func updatePoints() {
        guard let gradientLayer = gradientLayer else {
            return
        }

        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
    }

    private func updateLocations() {
        guard let gradientLayer = gradientLayer else {
            return
        }

        gradientLayer.locations = [startLocation, endLocation] as [NSNumber]
    }

    private func updateColors() {
        guard let gradientLayer = gradientLayer else {
            return
        }

        gradientLayer.colors = [topGradient.cgColor, bottomGradient.cgColor]
    }
}

