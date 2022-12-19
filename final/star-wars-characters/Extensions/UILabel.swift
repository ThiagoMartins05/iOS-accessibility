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
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.adjustsFontForContentSizeCategory = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        return label
    }
    
    static func makeTitleLabel(text: String? = nil) -> UILabel {
        let label = UILabel()
        if let newFont = UIFont(name: "Star Jedi", size: UIFont.systemFontSize) {
            label.font = UIFontMetrics(forTextStyle: .body).scaledFont(for: newFont)
            label.adjustsFontForContentSizeCategory = true
        }
        label.text = text
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}
