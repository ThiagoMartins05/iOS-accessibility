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
        label.font = UIFont.boldSystemFont(ofSize: UIFont.systemFontSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
    
    static func makeTitleLabel(text: String? = nil) -> UILabel {
        let label = UILabel()
        let newFont = UIFont(name: "Star Jedi", size: UIFont.systemFontSize)
        label.font = newFont
        label.text = text
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
