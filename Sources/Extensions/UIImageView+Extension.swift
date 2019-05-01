//
//  UIImageView+Extension.swift
//  
//
//  Created by Dmitriy Poluriezov on 5/1/19.
//

import UIKit

extension UIImageView {
    func downloadImageAndCompare(from url: URL, urlStringForComparison: String) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }

            if url.absoluteString == urlStringForComparison {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            }
            }.resume()
    }
}
