//
//  UIStackView.swift
//  star-wars-characters
//
//  Created by Thiago Martins on 13/12/22.
//

import UIKit

extension UIStackView {
    static func makeStack(axis: NSLayoutConstraint.Axis = .horizontal) -> UIStackView {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = axis
        return stack
    }
}
