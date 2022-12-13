//
//  UILabel.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 13/12/22.
//

import UIKit

extension UILabel {
    static func makeLabel(text: String? = nil) -> UILabel {
        let label = UILabel()
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
