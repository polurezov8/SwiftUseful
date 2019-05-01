//
//  UICollectionView+Extension.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

extension UICollectionView {
    // MARK: - UICollectionViewCell
    func register<T: UICollectionViewCell>(_ : T.Type) where T: Reusable {
        register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func register<T: UICollectionViewCell>(_ : T.Type) where T: Reusable, T: InterfaceBuilderPrototypable {
        register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeue<T: UICollectionViewCell>(_ : T.Type, for indexPath: IndexPath) -> T where T: Reusable {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            abort()
        }

        return cell
    }
}
