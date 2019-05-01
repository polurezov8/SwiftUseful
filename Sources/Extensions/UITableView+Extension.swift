//
//  UITableView+Extension.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

extension UITableView {
    // MARK: - UITableViewCell
    func register<T: UITableViewCell>(_ : T.Type) where T: Reusable {
        register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }

    func register<T: UITableViewCell>(_ : T.Type) where T: Reusable, T: InterfaceBuilderPrototypable {
        register(T.nib, forCellReuseIdentifier: T.reuseIdentifier)
    }

    func dequeue<T: UITableViewCell>(_ : T.Type, for indexPath: IndexPath) -> T where T: Reusable {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            abort()
        }

        return cell
    }

    // MARK: - UITableViewHeaderFooterView
    func register<T: UITableViewHeaderFooterView>(_ : T.Type) where T: Reusable, T: InterfaceBuilderPrototypable {
        register(T.nib, forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
    }

    func dequeue<T: UITableViewHeaderFooterView>(_ : T.Type) -> T where T: Reusable {
        guard let header = dequeueReusableHeaderFooterView(withIdentifier: T.reuseIdentifier) as? T else {
            abort()
        }

        return header
    }
}
